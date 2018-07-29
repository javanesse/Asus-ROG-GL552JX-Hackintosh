Original F4 Clover Extract DSDT from Clover v.4617

Reff: https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/

Extracting with Clover F4 (recommended):

Extracting with Clover F4 is recommended, due to ease of extraction, and due to ease of comparison between ACPI/origin and ACPI/patched (for troubleshooting).

At the main Clover bootloader screen, you can press F4 and Clover will dump the native ACPI files to EFI/Clover/ACPI/origin. You can then access them after you boot OS X to disassemble them and patch. Note that some BIOS implementations reverse the function of Fn+F4 with F4, so when in doubt, press both Fn+F4 and F4. There is no feedback during or after the dump, just a slight delay as the files are written. The delay is more noticeable if they are being written to USB, as would be the case when booting from a Clover USB.
