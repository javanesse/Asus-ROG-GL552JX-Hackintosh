Original F4 Clover Extract ACPI from Clover v.4617 - file

Reff: https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/

**Disassembling ACPI files**

Although the extracted native files can be opened directly in MaciASL, it is not recommended. Opening an AML file directly in MaciASL will cause MaciASL to disassemble the file (with iasl) standalone, and if the AML has complex references to other AMLs, it will not disassemble it correctly. You'll be left with many hard to fix errors.

As a result, it is better to disassemble all files as a group using iasl in Terminal. To prepare, place all DSDT and SSDT files in a single directory (DO NOT copy ACPI files that don't begin with DSDT or SSDT), and change the names such that they have an .aml extension.

Note: Do NOT attempt to disassemble other ACPI files with the -da option. It will not work.

From this point onward, you will work exclusively with the resulting *.dsl files using MaciASL. Of course, to use them you must save as "ACPI Machine Language Binary" with an extension .aml and place them where they will be loaded by the bootloader. But keep your patched .dsl files in case you need to apply more patches in the future.



**Disassembly with refs.txt**

Sometimes there are additional unresolved externals (symbols not defined in any file). The iasl disassembler will attempt to guess the number of arguments, but often it guesses poorly. You can correct it, by providing the External declarations in a text file. Some common unresolved symbols are SGPO, ECRD, ECWT, and MMTB.

The following refs.txt content has some common (and not so common) missing symbols (as reported by users in this thread) that the disassembler tends to be confused by.

First create refs.txt in the directory where your DSDT/SSDT files are:
Code (Text):

`External(MDBG, MethodObj, 1)\
External(_GPE.MMTB, MethodObj, 0)\
External(_SB.PCI0.LPCB.H_EC.ECWT, MethodObj, 2)\
External(_SB.PCI0.LPCB.H_EC.ECRD, MethodObj, 1)\
External(_SB.PCI0.LPCB.H_EC.ECMD, MethodObj, 1)\
External(_SB.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)\
External(_SB.PCI0.GFX0.DD02._BCM, MethodObj, 1)\
External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)\
External(_GPE.VHOV, MethodObj, 3)\
External(_SB.PCI0.XHC.RHUB.TPLD, MethodObj, 2)`
 
Note: A handy way to create refs.txt is to use pbpaste in Terminal. Copy the text above to the clipboard (I'm assuming you know how to do that), then:
Code (Text):

pbpaste>refs.txt
 
That will create refs.txt in your current working directory.

Then use it during disassembly:
Code (Text):

iasl -da -dl -fe refs.txt DSDT.aml SSDT*.aml

---

Membuka file AML secara langsung menggunakan aplikasi Maciasl adalah cara yang salah, hal ini akan mengakibatkan kesulitan dalam memperbaiki error.

mempersiapkan file-file yang akan di bongkar/extract/disassembing.

copy semua file DSDT dan SSDT kedalam sebuah folder. (hanya copy file-file dengan awalan DSDT dan SSDT) file lainnya silahkan di hapus karena iasl tidak akan bisa melakukan patching terhadap file-file selain yang berawalan DSDT dan SSDT.

setelah melakukan extract, maka file berekstensi *.aml akan berubah menjadi file berextensi *.dsl.

file berekstensi *.dsl inilah yang nantinya akan kita perbaiki/patch.

Bootloader Hackintosh memerlukan file *.aml, untuk itu ketika Kalian melakukan patching file *.dsl,
dan ingin menggunakannya di hackintosh, maka kalian harus menyimpan file menjadi "ACPI Machine Language" atau *.AML.


Disassembly menggunakan refs.txt

terkadang simbol-simbol yang di hasilkan oleh DSDT atau SSDT kalian akan sulit di terjemahkan oleh iasl, seperti SGPO, ECRD, ECWT, dan MMTB. oleh karena itu, ada baiknya jika kita membuat bantuan untuk mendeklarasikan simbol simbol tersebut.

caranya dalah membuat file refs.txt pada folder dimana kita menyimpan DSDT dan SSDT sebelum di extract.

kemudian buka file refs.txt tersebut dan paste kode di bawah ini:

`External(MDBG, MethodObj, 1)
External(_GPE.MMTB, MethodObj, 0)
External(_SB.PCI0.LPCB.H_EC.ECWT, MethodObj, 2)
External(_SB.PCI0.LPCB.H_EC.ECRD, MethodObj, 1)
External(_SB.PCI0.LPCB.H_EC.ECMD, MethodObj, 1)
External(_SB.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)
External(_SB.PCI0.GFX0.DD02._BCM, MethodObj, 1)
External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)
External(_GPE.VHOV, MethodObj, 3)
External(_SB.PCI0.XHC.RHUB.TPLD, MethodObj, 2)`



Regard,

Http://javanesse.net
