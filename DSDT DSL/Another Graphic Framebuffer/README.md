# Alternative Graphic Framebuffer for Intel HD 5200
##What is this:
- its just an alternative framebuffer for Intel HD 5200 Graphic card using 0x0a260006 ig-platform-id

## What the different with the other one:
- This framebuffer will give amount of Graphic Vram 1.5Gb which the native ones which give 1024Mb Vram
- fix lags/pauses/unresponsiveness shortly after boot (and after wake from sleep)

## How to Use:
1. Replace previous SSDT-7.aml whit this new SSDT-7.aml
2. Theres a config.plist, open using clover configurator, in kernel and kext patches, copy that 2(two) patches to your config.plist were you use.

## Why not using 0x0D260000 and give a patch to clover:
- Didn't know how to patch yet

## How to remove or replace to the previous one:
1. Replace SSDT-7.aml with the previous SSDT-7.aml
2. Delete 2(two) patches given above

# References: 
- [Common Problems in 10.12 Sierra](https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/)
- [unresponsiveness shortly after boot](https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/page-94#post-1485104)


Http://javanesse.net

# Special Thanks
- God
- my lovely devil Y I the absolute evil
- Google
- Tonymacx86 Crews especially Rehabman
- InsanelyMac
- OSX86
- You

Good Luck.
