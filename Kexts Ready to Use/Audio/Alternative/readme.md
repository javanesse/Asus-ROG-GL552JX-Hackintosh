This is one of alternative to make your sound active.


# How to Install:
- Make a backup of your original AppleHDA.kext
- If you’re using LILU+AppleALC, then remove those kexts 1st,
- Replace DSDT.aml and SSDT-7.aml with this DSDT and SSDT provided above which using Layout-id 13,
- Install using kexts installer,
- Restart


# explainer about this Patched Layout ID:

Codec: Connexant CX20752




You must change the Layout to 13  in the DSDT patch HDEF.

Kext Patched by Insanelydeepak 

 Layout_ID/Audio ID description :
. Layout_ID 11 = ​​3 ports supported (Pink, Green, Blue) (Note : without auto-switch , you have to manually select between output/input device's)
. Layout_ID 12 = 5/6 ports supported (Grey, Black, Laranja, Pink, Green, Blue) 
. Layout_ID 13 = 5/6 ports supported (Grey, Black, Laranja, Pink, Green, Blue, CodecAddress: 2)

. Default is Layout_ID: 13.

Credit to [insanelydeepak](https://github.com/insanelydeepak/Patched-AppleHDA-for-Mac-OS-Sierra-10.12)


# How to remove:
- Restore the Original AppleHDA.kext
- Replace DSDT+SSDT-7.aml if necessary.