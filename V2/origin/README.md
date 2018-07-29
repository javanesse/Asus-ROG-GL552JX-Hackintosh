Original F4 Clover Extract ACPI from Clover v.4617 - file

Reff: https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/

Extracting with Clover F4 (recommended):

Extracting with Clover F4 is recommended, due to ease of extraction, and due to ease of comparison between ACPI/origin and ACPI/patched (for troubleshooting).

At the main Clover bootloader screen, you can press F4 and Clover will dump the native ACPI files to EFI/Clover/ACPI/origin. You can then access them after you boot OS X to disassemble them and patch. Note that some BIOS implementations reverse the function of Fn+F4 with F4, so when in doubt, press both Fn+F4 and F4. There is no feedback during or after the dump, just a slight delay as the files are written. The delay is more noticeable if they are being written to USB, as would be the case when booting from a Clover USB.

---

Ekstrak menggunakan Clover f4 (Rekomendasi)
Ekstrak menggunakan Clover f4 sangat di rekomendasikan, mengingat mudah cara ekstraknya, dan memngingat mudah membandingkan antara ACPI/origin dan ACPI/patched (untuk troubleshooting)

Pada layar utama menu Clover bootloader, Kalian dapat menekan tombol F4 dan Clover akan membuat file native(asli) ACPI ke EFI/Clover/ACPI/origin secara otomatis. Kalian dapat mengakses file file tersebut setelah kalian boting OSX kemudian untuk di membongkar dan melakukan patching terhadap file file tersebut.

Catatan, beberapa implementasi BIOS mengharuskan menekan tombol fn+F4 untuk membuat DSDT, jadi alangkah lebih baik kalau kalian menekan tombol F4 kemudian fn+F4 untuk memastikan ACPI terekstrak dengan baik.

Tidak ada tanda apapun ketika kita sedang meng-ekstrak, hanya mungkin komputer akan hang beberapa detik. Hang akan jadi leboh lama ketika kita meng-ekstrak ACPI ke USB, sebagai contoh ketika Kalian sedang booting dari USB untuk meng-ekstrak ACPI.

Regard,
Javanesse.Net
