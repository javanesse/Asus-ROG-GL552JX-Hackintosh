mematikan discrete GPU pada laptop

persoalannya sederhana, Laptop kita menyediakan metode `_OFF` yang **biasanya** terdapat pada 
SSDT, yang dapat di eksekusi untuk mematikan sirkuit. jalan termudah untuk melakukan patch ini yaitu dengan cara mengeksekusi `_OFF` dari yang terdapat pada metode `_INI` tertentu.

> Catatan: Metode `_OFF` bisa jadi terdapat pada DSDT, atau bisa jadi memiliki nama yang berbeda seperti `GPOF, OPOF, _PS3` dan lain-lain.

target kita adalah memanggil `_OFF` dari `_INI`

buka terminal, gunakan grep dan cari metode `_OFF`
```
grep -l Method.*_OFF *.dsl
```

dalam kasus pada laptop saya, terdapat 2 file yang mengandung metode `_OFF` yaitu
```
SSDT-5-SgPeg.dsl
SSDT-8-OptTabl.dsl
```

langkah berikutnya adalah mencari metode `_INI` pada `ACPI`
```
grep -l Method.*_INI *.dsl
```

dan hasilnya adalah
```
DSDT.dsl
SSDT-4-SaSsdt.dsl
SSDT-5-SgPeg.dsl
SSDT-8-OptTabl.dsl
```

Bisa dilihat bahwa `SSDT-5` dan `SSDT-8` masuk dalam list lagi, sehingga dapat di simpulkan bahwa kedua file inilah dimana metode `_OFF` itu berada.


kemudian pada saat membuka `SSDT-5`, dan mencari `Method (_INI`, maka akan mendapati hal ini
```
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.PEG0.PEGP._ADR)
        }
```

Metode `_INI` inilah yang di gunakan untuk discrete GPU, dan yang akan di lakukan patching sehingga disebut `_OFF`.

Jika kita mengeklik bagian tulisan method tersebut, maka pada bagian ujung kiri bawah pada aplikasi `MacIASL` menunjukkan letak(path) dimana metode ini berada.
```
SSDT ->\_SB.PCI0.PEG0.PEGP->_INI
```

dari sini, path `_OFF` seharusnya juga berada di 
```
SSDT ->\_SB.PCI0.PEG0.PEGP->_OFF
```

---
langkah selanjutnya adalah membuka `SSDT-8` dan kali ini mencari metode `_OFF` namun sama seperti cara yang di atas, dan hasilnya adalah
```
        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (LEqual (CTXT, Zero))
            {
                \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)
                If (LNotEqual (GPRF, One))
                {
                    Store (VGAR, VGAB)
                }

                Store (One, CTXT)
            }

            SGOF ()
        }
```


jika memperhatikan kode di atas, bisa di lihat terdapat **EC** pada `\_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)`. ini akan menyebabkan masalah dan akan menghambat metode `_OFF` pada saat di eksekusi.

untuk itu kita perlu menghapus kode ini, atau lebih baik menggunakan syntax patch
```
into method label _OFF parent_label \_SB.PCI0.PEG0.PEGP code_regex .*EC.* removeall_matched;
```
dimana baris kode `\_SB.PCI0.PEG0.PEGP` ini di dapat dari letak path dari di ujung kiri bawah seperti halnya sebelumnya saat mencari metode `_INI`

setelah melakukan patching, maka akan di dapatkan perubahan seperti di bawah ini
```
        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (LEqual (CTXT, Zero))
            {

                If (LNotEqual (GPRF, One))
                {
                    Store (VGAR, VGAB)
                }

                Store (One, CTXT)
            }

            SGOF ()
        }
```

setelah melakukan patching, lakukan compile.

> Catatan: Apabila terjadi error, gunakan patch `Cleanup/Fix Errors (SSDT)` dari repository


namun bila masih mendapati error, maka, buatlah menjadi sebuah komentar, sehingga kode error tersebut di skip dan tidak terpakai

contoh error:
```
Store (TCAP, \_PR.CPU0._PTC ())
```

tambahkan tanda komentar sehingga menjadi:
```
//       Store (TCAP, \_PR.CPU0._PTC ())
```

> Harap di perhatikan kita masih memiliki kode `\_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)` para metode `_REG`

---

Sampai disini, metode `_OFF` telah di perbaiki, selanjutnya giliran memanggil `_INI` yang terletak pada `SSDT-5`



laptop pada umumnya, bisa saja menggunakan patch `Disable from _INI (SSDT)` dari repository, namun hal ini akan menyebabkan kesalahan **fatal** apabila path dalam patch tersebut tidak di ubah sesuai lokasi perangkat GPU kita

jadi, gunakan patch yang telah di modifikasi di bawah ini:
```
into method label _INI parent_label \_SB.PCI0.PEG0.PEGP insert
begin
//added to turn nvidia/radeon off\n
External(\_SB.PCI0.PEG0.PEGP._OFF, MethodObj)\n
_OFF()\n
end;
```

dimana yang perlu di ubah adalah `\_SB.PCI0.PEG0.PEGP` yang mana kita dapatkan pada saat mencari metode `_INI` seperti yang telah di jabarkan di atas.

sebelum di patch:
```
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.PEG0.PEGP._ADR)
        }
```


Setelah patch:
```
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.PEG0.PEGP._ADR)
            //added to turn nvidia/radeon off
            External(\_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
            _OFF()
        }
```

---

Sekarang saatnya kita atasi masalah `EC` pada metode `_REG`

Pada DSDT, cari `Device (EC0)`

maka pada metode `_REG` akan mendapati:
```
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECFL)
                }
            }
```

lakukan patching menggunakan patch di bawah ini:
```
into method label _REG parent_hid PNP0C09 insert
begin
//added to turn nvidia/radeon off\n
If (LAnd(LEqual(Arg0,3),LEqual(Arg1,1)))\n
{\n
    \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)\n
}\n
end;
```

maka, metode `_REG` akan berubah menjadi:
```
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECFL)
                }
                //added to turn nvidia/radeon off
                If (LAnd(LEqual(Arg0,3),LEqual(Arg1,1)))
                {
                    \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)
                }
            }
```

---

compile ketiga file yang telah di patch tersebut, dan lakukan test.
Namun ada baiknya lakukan backup terlebih dahulu untuk mengantisipasi kegagalan.