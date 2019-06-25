/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0.aml, Mon Jun 24 20:36:20 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019D (413)
 *     Revision         0x01
 *     Checksum         0xB7
 *     OEM ID           "Intel"
 *     OEM Table ID     "zpodd"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "Intel", "zpodd", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.IGPU.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (FDTP, IntObj)
    External (GIV0, FieldUnitObj)
    External (GL00, FieldUnitObj)
    External (GL08, FieldUnitObj)
    External (GPE3, FieldUnitObj)
    External (GPS3, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PFLV, FieldUnitObj)
    External (RTD3, FieldUnitObj)

    If (LEqual (RTD3, Zero))
    {
        Scope (\_SB.PCI0.SATA)
        {
            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
                Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        If (LEqual (PFLV, FDTP))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Return (Buffer (One)
                                        {
                                             0x0F                                           
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Return (One)
                            }
                            Case (0x02)
                            {
                                Store (Zero, GPE3)
                                If (LEqual (And (\GL00, 0x08), 0x08))
                                {
                                    Or (\GIV0, 0x08, \GIV0)
                                }
                                Else
                                {
                                    And (\GIV0, 0xF7, \GIV0)
                                }

                                Or (\GL08, 0x10, \GL08)
                                Sleep (0xC8)
                                Store (One, GPS3)
                                Store (One, GPE3)
                                Return (One)
                            }
                            Case (0x03)
                            {
                                Store (Zero, GPE3)
                                Store (One, GPS3)
                                And (\GL08, 0xEF, \GL08)
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (LEqual (PFLV, FDTP))
                {
                    Return (Zero)
                }

                Store (Zero, GPE3)
                And (\GL08, 0xEF, \GL08)
                Notify (\_SB.PCI0.SATA, 0x82)
                Return (Zero)
            }
        }
    }
}

