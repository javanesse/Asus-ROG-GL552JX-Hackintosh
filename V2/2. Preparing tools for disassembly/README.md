Preparing tools for disassembly

Reff: https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/

Preparing tools for disassembly

To properly disassemble your extracted files, you need the iasl compiler, which is run from Terminal.

You will need a recent build of iasl to disassemble them properly. There is an appropriate version available here: https://bitbucket.org/RehabMan/acpica/downloads/. It is a good idea to copy the iasl binary to your path (eg. /usr/bin), so it is easily accessed from Terminal.

For example, if you downloaded it to ~/Downloads/iasl.zip, you can extract and copy it in Terminal:


---

Untuk melakukan pembongkaran file, Kalian membutuhkan compiler iasl, di mana iasl ini berjalan di terminal.

Kalian akan butuh iasl ini untuk membongkar file secara benar. berbeda dengan penterjemahan di atas saya menggunakan aplikasi MACIASL dan mengambil file iasl di dalamnya. walaupun saya menyertakan aplikasi maciasl, namun maciasl terbaru dapat di download di https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/. 

Setelah mendownload aplikasi maciasl, kemudian saya ambil file iasl-nya dan mengcopy ke /usr/bin.
caranya adalah:
1. Klik kanan aplikasi maciasl
2. Pilih "show package content"
3. Buka folder "Content"
4. Buka folder "MacOS"
5. Copy file "iasl62" ke desktop
6. Ubah nama "iasl62" yang ada di desktop menjadi "iasl"
7. Copy file "iasl" yang ada di dektop ke /usr/bin

walaupun metodenya berbeda, namun fungsi tetap sama.

Regard,

Http://javanesse.net
