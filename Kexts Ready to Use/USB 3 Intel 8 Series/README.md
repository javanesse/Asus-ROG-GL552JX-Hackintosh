1. Install all kexts
2. Apply _OSI to XOSI patch from clover configurator
3. Set custom flag -uia_exclude_hs

Explainer:
1. Asus GL552JX has 8-series USB. So, to inject USB you have to install FakePCIID_XHCIMux.kext (FakePCIID_XHCIMux has no effect without FakePCIID.kext, and is valid only for the Intel chipsets mentioned).
2. Your DSDT may be disabling USB3 due to improper Windows emulation. Apply the XOSI fix to address this.
3. Install USBInjectAll.kext and use kernel flag uia_exclude_hs. This will enable the USBInjectAll port injectors for EH0x and the associated hubs, overriding the built-in hub port injectors, but keep DSDT control of XHC.