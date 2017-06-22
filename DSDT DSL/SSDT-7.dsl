/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Tue May  2 21:22:24 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004541 (17729)
 *     Revision         0x01
 *     Checksum         0x45
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "SaSsdt", "SaSsdt ", 0x00003000)
{
    /*
     * iASL Warning: There were 17 external control methods found during
     * disassembly, but only 14 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_SB_.BRTI, FieldUnitObj)
    External (_SB_.CSTE, FieldUnitObj)
    External (_SB_.LBTN, FieldUnitObj)
    External (_SB_.NSTE, FieldUnitObj)
    External (_SB_.OCAD, FieldUnitObj)
    External (_SB_.OPAD, FieldUnitObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.AR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.SNXD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.PWAC, BuffObj)
    External (_SB_.PCI0.LPCB.EC0_.STBR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0B, MethodObj)    // 0 Arguments
    External (_SB_.PEPD, UnknownObj)
    External (_SB_.SFUN, FieldUnitObj)
    External (_SB_.SSTE, FieldUnitObj)
    External (_SB_.VBIF, FieldUnitObj)
    External (_SB_.VGAF, FieldUnitObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (DSEN, FieldUnitObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (GUAM, MethodObj)    // 1 Arguments
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (IDAB, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (ISMI, MethodObj)    // 1 Arguments
    External (MSOS, MethodObj)    // 0 Arguments
    External (NATK, MethodObj)    // 0 Arguments
    External (OSFG, IntObj)
    External (OSW8, IntObj)
    External (OSXP, IntObj)
    External (OSYS, FieldUnitObj)
    External (PICM, IntObj)
    External (PNHM, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SCIS, FieldUnitObj)

    OperationRegion (SANV, SystemMemory, 0xCAAF4E18, 0x016D)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDB,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CCSA,   32, 
        CCNT,   32, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        PXFD,   8, 
        EBAS,   32, 
        HYSS,   32
    }

    Scope (\_SB.PCI0)
    {
        Name (LTRS, Zero)
        Name (OBFS, Zero)
        Device (PEG0)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }

            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR02 ())
                }

                Return (PR02 ())
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRA, LTRS)
                Store (OBFA, OBFS)
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), T_0)
                    If (LEqual (T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), T_1)
                            If (LEqual (T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }

                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf (LEqual (T_1, 0x04))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (OBFS)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                }
                            }
                            ElseIf (LEqual (T_1, 0x06))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (LTRS)
                                    {
                                        Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                        Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                        Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                        Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                        Return (LTRV)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PEGP)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
            }
        }

        Device (PEG1)
        {
            Name (_ADR, 0x00010001)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }

            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0A ())
                }

                Return (PR0A ())
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRB, LTRS)
                Store (OBFB, OBFS)
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), T_0)
                    If (LEqual (T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), T_1)
                            If (LEqual (T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }

                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf (LEqual (T_1, 0x04))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (OBFS)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                }
                            }
                            ElseIf (LEqual (T_1, 0x06))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (LTRS)
                                    {
                                        Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                        Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                        Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                        Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                        Return (LTRV)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (PEG2)
        {
            Name (_ADR, 0x00010002)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }

            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0B ())
                }

                Return (PR0B ())
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRC, LTRS)
                Store (OBFC, OBFS)
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), T_0)
                    If (LEqual (T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), T_1)
                            If (LEqual (T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }

                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }

                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            ElseIf (LEqual (T_1, 0x04))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (OBFS)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                }
                            }
                            ElseIf (LEqual (T_1, 0x06))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    If (LTRS)
                                    {
                                        Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                        Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                        Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                        Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                        Return (LTRV)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (HDAU)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Name (BARA, 0x80000000)
            Name (TBAR, Zero)
            Name (TCMD, Zero)
            Name (MODB, Zero)
            Name (MODC, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (AUVD, 0xFFFF))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    Store (ABAR, BARA)
                }
            }

            OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18004), 
                ACMD,   8, 
                Offset (0x18010), 
                ABAR,   32
            }

            OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16
            }

            Method (ASTR, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    Add (BBAR, 0x1000, BBAR)
                    OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        EM4W,   32, 
                        EMWA,   32, 
                        Offset (0x1C), 
                        ADWA,   32
                    }

                    Store (AUDA, EMWA)
                    Store (AUDB, ADWA)
                    Store (AUDC, EM4W)
                }
            }

            Method (VSTR, 1, Serialized)
            {
                Name (CONT, 0x03E8)
                Name (ADDR, 0x80000000)
                Store (Arg0, ADDR)
                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }

                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    If (LNotEqual (CDEC, Zero))
                    {
                        And (ABAR, 0xFFFFFFF0, BBAR)
                        OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60), 
                            AVIC,   32, 
                            Offset (0x68), 
                            AIRS,   16
                        }

                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                        {
                            Stall (One)
                            Decrement (CONT)
                        }

                        Or (AIRS, 0x02, AIRS)
                        Store (CDEC, AVIC)
                        Or (AIRS, One, AIRS)
                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                        {
                            Stall (One)
                            Decrement (CONT)
                        }
                    }
                }
            }

            Method (CXDC, 0, Serialized)
            {
                Name (IDDX, 0x80000000)
                If (LAnd (LNotEqual (CCSA, Zero), LNotEqual (CCNT, Zero)))
                {
                    Store (CCSA, IDDX)
                    While (LLess (IDDX, Add (CCSA, Multiply (CCNT, 0x04))))
                    {
                        VSTR (IDDX)
                        Add (IDDX, 0x04, IDDX)
                    }
                }
            }

            Method (ARST, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        CRST,   32, 
                        Offset (0x4C), 
                        CORB,   32, 
                        Offset (0x5C), 
                        RIRB,   32, 
                        Offset (0x80), 
                        OSD1,   32, 
                        Offset (0xA0), 
                        OSD2,   32
                    }

                    And (CORB, 0xFFFFFFFD, CORB)
                    And (RIRB, 0xFFFFFFFD, RIRB)
                    And (OSD1, 0xFFFFFFFD, OSD1)
                    And (OSD2, 0xFFFFFFFD, OSD2)
                    And (CRST, 0xFFFFFFFE, CRST)
                }
            }

            Method (AINI, 0, Serialized)
            {
                Name (CONT, 0x03E8)
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16, 
                        Offset (0x08), 
                        GCTL,   32, 
                        Offset (0x0E), 
                        SSTS,   8, 
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }

                    And (GCAP, 0xFFFF, GCAP)
                    Or (SSTS, 0x0F, SSTS)
                    And (GCTL, 0xFFFFFFFE, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }

                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                }
            }

            Method (ABWA, 1, Serialized)
            {
                If (Arg0)
                {
                    If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LEqual (And (ABAR, 0xFFFFC000), Zero)))
                    {
                        If (LNotEqual (BARA, 0x80000000))
                        {
                            Store (ABAR, TBAR)
                            Store (ACMD, TCMD)
                            Store (BARA, ABAR)
                            Store (0x06, ACMD)
                            Store (One, MODB)
                        }
                    }
                    ElseIf (LNotEqual (And (ACMD, 0x06), 0x06))
                    {
                        Store (ACMD, TCMD)
                        Store (0x06, ACMD)
                        Store (One, MODC)
                    }
                }
                Else
                {
                    If (MODB)
                    {
                        If (LEqual (ABAR, BARA))
                        {
                            Store (TBAR, ABAR)
                            Store (TCMD, ACMD)
                        }
                    }

                    If (MODC)
                    {
                        Store (TCMD, ACMD)
                    }
                }
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "layout-id", Buffer() { 0x1C, 0x00, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                })
            }
        }

        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            OperationRegion (VSID, PCI_Config, Zero, 0x04)
            Field (VSID, ByteAcc, NoLock, Preserve)
            {
                REG0,   32
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("IGPU DEP Call")
                If (LEqual (S0ID, One))
                {
                    ADBG ("IGPU DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("IGPU DEP NULL")
                    Return (Package (Zero) {})
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }

                If (DRDY)
                {
                    And (Arg0, 0x03, DOSF)
                    Store (ShiftRight (Arg0, 0x02), BRNC)
                    And (BRNC, One, BRNC)
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }

                    If (LNotEqual (DDL9, Zero))
                    {
                        Store (SDDL (DDL9), DID9)
                    }

                    If (LNotEqual (DD10, Zero))
                    {
                        Store (SDDL (DD10), DIDA)
                    }

                    If (LNotEqual (DD11, Zero))
                    {
                        Store (SDDL (DD11), DIDB)
                    }

                    If (LNotEqual (DD12, Zero))
                    {
                        Store (SDDL (DD12), DIDC)
                    }

                    If (LNotEqual (DD13, Zero))
                    {
                        Store (SDDL (DD13), DIDD)
                    }

                    If (LNotEqual (DD14, Zero))
                    {
                        Store (SDDL (DD14), DIDE)
                    }

                    If (LNotEqual (DD15, Zero))
                    {
                        Store (SDDL (DD15), DIDF)
                    }
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    Name (TMP9, Package (0x09)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP9, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP9, One))
                    Store (Or (0x00010000, DID3), Index (TMP9, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP9, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP9, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP9, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP9, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP9, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMP9, 0x08))
                    Return (TMP9)
                }

                If (LEqual (NDID, 0x0A))
                {
                    Name (TMPA, Package (0x0A)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPA, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPA, One))
                    Store (Or (0x00010000, DID3), Index (TMPA, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPA, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPA, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPA, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPA, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPA, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPA, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPA, 0x09))
                    Return (TMPA)
                }

                If (LEqual (NDID, 0x0B))
                {
                    Name (TMPB, Package (0x0B)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPB, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPB, One))
                    Store (Or (0x00010000, DID3), Index (TMPB, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPB, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPB, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPB, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPB, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPB, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPB, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPB, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPB, 0x0A))
                    Return (TMPB)
                }

                If (LEqual (NDID, 0x0C))
                {
                    Name (TMPC, Package (0x0C)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPC, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPC, One))
                    Store (Or (0x00010000, DID3), Index (TMPC, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPC, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPC, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPC, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPC, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPC, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPC, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPC, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPC, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPC, 0x0B))
                    Return (TMPC)
                }

                If (LEqual (NDID, 0x0D))
                {
                    Name (TMPD, Package (0x0D)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPD, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPD, One))
                    Store (Or (0x00010000, DID3), Index (TMPD, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPD, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPD, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPD, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPD, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPD, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPD, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPD, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPD, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPD, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPD, 0x0C))
                    Return (TMPD)
                }

                If (LEqual (NDID, 0x0E))
                {
                    Name (TMPE, Package (0x0E)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPE, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPE, One))
                    Store (Or (0x00010000, DID3), Index (TMPE, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPE, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPE, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPE, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPE, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPE, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPE, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPE, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPE, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPE, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPE, 0x0C))
                    Store (Or (0x00010000, DIDE), Index (TMPE, 0x0D))
                    Return (TMPE)
                }

                If (LEqual (NDID, 0x0F))
                {
                    Name (TMPF, Package (0x0F)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPF, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPF, One))
                    Store (Or (0x00010000, DID3), Index (TMPF, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPF, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPF, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPF, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPF, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPF, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPF, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPF, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPF, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPF, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPF, 0x0C))
                    Store (Or (0x00010000, DIDE), Index (TMPF, 0x0D))
                    Store (Or (0x00010000, DIDF), Index (TMPF, 0x0E))
                    Return (TMPF)
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID1), 0x0400))
                    {
                        Store (One, EDPV)
                        Store (NXD1, NXDX)
                        Store (DID1, DIDX)
                        Return (One)
                    }

                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID2), 0x0400))
                    {
                        Store (0x02, EDPV)
                        Store (NXD2, NXDX)
                        Store (DID2, DIDX)
                        Return (0x02)
                    }

                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID3), 0x0400))
                    {
                        Store (0x03, EDPV)
                        Store (NXD3, NXDX)
                        Store (DID3, DIDX)
                        Return (0x03)
                    }

                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID4), 0x0400))
                    {
                        Store (0x04, EDPV)
                        Store (NXD4, NXDX)
                        Store (DID4, DIDX)
                        Return (0x04)
                    }

                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID5), 0x0400))
                    {
                        Store (0x05, EDPV)
                        Store (NXD5, NXDX)
                        Store (DID5, DIDX)
                        Return (0x05)
                    }

                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID6), 0x0400))
                    {
                        Store (0x06, EDPV)
                        Store (NXD6, NXDX)
                        Store (DID6, DIDX)
                        Return (0x06)
                    }

                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID7), 0x0400))
                    {
                        Store (0x07, EDPV)
                        Store (NXD7, NXDX)
                        Store (DID7, DIDX)
                        Return (0x07)
                    }

                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID8), 0x0400))
                    {
                        Store (0x08, EDPV)
                        Store (NXD8, NXDX)
                        Store (DID8, DIDX)
                        Return (0x08)
                    }

                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD09)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID9), 0x0400))
                    {
                        Store (0x09, EDPV)
                        Store (NXD8, NXDX)
                        Store (DID9, DIDX)
                        Return (0x09)
                    }

                    If (LEqual (DID9, Zero))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID9))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID9, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID9))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID9))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0A)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDA), 0x0400))
                    {
                        Store (0x0A, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDA, DIDX)
                        Return (0x0A)
                    }

                    If (LEqual (DIDA, Zero))
                    {
                        Return (0x0A)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDA))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDA, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDA))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDA))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0B)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDB), 0x0400))
                    {
                        Store (0x0B, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDB, DIDX)
                        Return (0x0B)
                    }

                    If (LEqual (DIDB, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDB))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDB, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDB))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDB))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0C)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDC), 0x0400))
                    {
                        Store (0x0C, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDC, DIDX)
                        Return (0x0C)
                    }

                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDC))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (CDDS (DIDC))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDC))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0D)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDD), 0x0400))
                    {
                        Store (0x0D, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDD, DIDX)
                        Return (0x0D)
                    }

                    If (LEqual (DIDD, Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDD))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDD, Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (CDDS (DIDD))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDD))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0E)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDE), 0x0400))
                    {
                        Store (0x0E, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDE, DIDX)
                        Return (0x0E)
                    }

                    If (LEqual (DIDE, Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDE))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDE, Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return (CDDS (DIDE))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDE))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD0F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDF), 0x0400))
                    {
                        Store (0x0F, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDF, DIDX)
                        Return (0x0F)
                    }

                    If (LEqual (DIDF, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDF))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (CDDS (DIDF))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DIDF))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (LCDD)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXDX)
                    }

                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Method (MINB, 0, NotSerialized)
                {
                    If (ARDY)
                    {
                        Store (BRTI, Local1)
                        ShiftLeft (Local1, 0x04, Local1)
                        Store (DerefOf (Index (\_SB.PCI0.LPCB.EC0.PWAC, Local1)), Local0)
                        Or (TCHE, 0x08, TCHE)
                        Or (ASLC, 0x08, ASLC)
                        Store (Local0, PFMB)
                        Or (PFMB, 0x0100, PFMB)
                        Store (One, ASLE)
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    If (LGreaterEqual (\MSOS (), \OSW8))
                    {
                        Add (0x64, One, Local0)
                        Add (Local0, 0x02, Local0)
                        Name (BRPP, Package (0x67) {})
                        Store (0x64, Index (BRPP, Zero))
                        Store (0x28, Index (BRPP, One))
                        Store (0x02, Local1)
                        Store (0x64, Local2)
                        While (LLess (Local1, Local0))
                        {
                            Store (Local2, Index (BRPP, Local1))
                            Increment (Local1)
                            Decrement (Local2)
                        }

                        Store (Zero, Local0)
                        While (LLessEqual (Local0, 0x0A))
                        {
                            Store (Multiply (Local0, 0x0A), Index (PCTG, Subtract (0x0A, Local0)))
                            Increment (Local0)
                        }

                        MINB ()
                        Return (BRPP)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                        Store (BRTI, Local4)
                        ShiftLeft (Local4, 0x04, Local4)
                        While (LLess (Local0, 0x0B))
                        {
                            Subtract (0x0B, Local0, Local3)
                            Subtract (Local3, One, Local3)
                            Store (Add (Local4, Local3), Local3)
                            Store (DerefOf (Index (\_SB.PCI0.LPCB.EC0.PWAC, Local3)), Local1)
                            Store (Divide (Multiply (Local1, 0x64), 0xFF, ), Local2)
                            Store (Local2, Index (PCTG, Local0))
                            Increment (Local0)
                        }

                        MINB ()
                        Return (PCTG)
                    }
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    Store (One, BCMD)
                    Store (GCBL (Arg0), Local0)
                    Subtract (0x0A, Local0, LBTN)
                    If (BRNC)
                    {
                        \_SB.PCI0.IGPU.AINT (One, Arg0)
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.STBR ()
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    If (LGreaterEqual (\MSOS (), \OSW8))
                    {
                        And (CBLV, 0x7FFFFFFF, Local0)
                        Return (Local0)
                    }
                    Else
                    {
                        Store (BRTI, Local1)
                        ShiftLeft (Local1, 0x04, Local1)
                        Store (LBTN, Local2)
                        Store (Add (Local1, Local2), Local2)
                        Store (Multiply (DerefOf (Index (\_SB.PCI0.LPCB.EC0.PWAC, Local2)), 0x64), Local3)
                        Store (Divide (Local3, 0xFF, ), Local3)
                        Return (Local3)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL9, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD10, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD11, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD12, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD13, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD14, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DD15, Local0))
                {
                    Return (Local1)
                }

                Decrement (NDID)
                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (\_SB.PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x14), 
                    AUDE,   8, 
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                PCON,   32, 
                DVER,   64, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                DDL9,   32, 
                DD10,   32, 
                DD11,   32, 
                DD12,   32, 
                DD13,   32, 
                DD14,   32, 
                DD15,   32, 
                CPL9,   32, 
                CP10,   32, 
                CP11,   32, 
                CP12,   32, 
                CP13,   32, 
                CP14,   32, 
                CP15,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                SROT,   32, 
                IUER,   32, 
                FDSP,   64, 
                FDSS,   32, 
                STAT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GBDA, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (0x0659, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (0x00300482, PARM)
                    If (LEqual (S0ID, One))
                    {
                        Or (PARM, 0x0100, PARM)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    And (PARM, 0xEFFF0000, PARM)
                    And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                    Or (IBTT, PARM, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (IPSC, PARM)
                    Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                    Add (PARM, 0x00010000, PARM)
                    Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    Store (GIVD, PARM)
                    XOr (PARM, One, PARM)
                    Or (PARM, ShiftLeft (GMFN, One), PARM)
                    Or (PARM, 0x1800, PARM)
                    Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                    Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                    Store (One, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    Store (Zero, PARM)
                    If (ISSC)
                    {
                        Or (PARM, 0x03, PARM)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    Store (KSV0, PARM)
                    Store (KSV1, GESF)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (CRIT)
            }

            Method (SBCB, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (Zero, PARM)
                    Store (0x000F87DD, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x03))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    If (LEqual (S0ID, One))
                    {
                        If (LEqual (And (PARM, 0xFF), One))
                        {
                            \GUAM (One)
                        }
                    }

                    If (LEqual (PARM, Zero))
                    {
                        Store (CLID, Local0)
                        If (And (0x80000000, Local0))
                        {
                            And (CLID, 0x0F, CLID)
                            GLID (CLID)
                        }
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x08))
                {
                    If (LEqual (S0ID, One))
                    {
                        Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            \GUAM (Zero)
                        }
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x09))
                {
                    And (PARM, 0xFF, IBTT)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    And (PARM, 0xFF, IPSC)
                    If (And (ShiftRight (PARM, 0x08), 0xFF))
                    {
                        And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                        Decrement (IPAT)
                    }

                    And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    And (ShiftRight (PARM, One), One, IF1E)
                    If (And (PARM, 0x0001E000))
                    {
                        And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                    }
                    Else
                    {
                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x10))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x11))
                {
                    Store (ShiftLeft (LIDS, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x12))
                {
                    If (And (PARM, One))
                    {
                        If (LEqual (ShiftRight (PARM, One), One))
                        {
                            Store (One, ISSC)
                        }
                        Else
                        {
                            Store (Zero, GESF)
                            Return (CRIT)
                        }
                    }
                    Else
                    {
                        Store (Zero, ISSC)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x13))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x14))
                {
                    And (PARM, 0x0F, PAVP)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x15))
                {
                    If (LEqual (PARM, One))
                    {
                        Or (\_SB.PCI0.AUDE, 0x20, \_SB.PCI0.AUDE)
                        \_SB.PCI0.HDAU.ABWA (One)
                        \_SB.PCI0.HDAU.ARST ()
                        \_SB.PCI0.HDAU.ASTR ()
                        \_SB.PCI0.HDAU.AINI ()
                        \_SB.PCI0.HDAU.CXDC ()
                        \_SB.PCI0.HDAU.ABWA (Zero)
                        Notify (\_SB.PCI0, Zero)
                    }

                    If (LEqual (PARM, Zero))
                    {
                        And (\_SB.PCI0.AUDE, 0xDF, \_SB.PCI0.AUDE)
                        Notify (\_SB.PCI0, Zero)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (SUCC)
            }

            Method (GSCI, 0, Serialized)
            {
                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.IGPU, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (\_SB.PCI0.IGPU, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                If (GNOT (0x02, Zero))
                {
                    Or (CLID, 0x80000000, CLID)
                    Return (One)
                }

                Return (Zero)
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (IUEH, 1, Serialized)
            {
                And (IUER, 0xC0, IUER)
                XOr (IUER, ShiftLeft (One, Arg0), IUER)
                If (LLessEqual (Arg0, 0x04))
                {
                    Return (AINT (0x05, Zero))
                }
                Else
                {
                    Return (AINT (Arg0, Zero))
                }
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LAnd (LGreaterEqual (Arg0, 0x05), LLessEqual (Arg0, 0x07)))
                {
                    Store (ShiftLeft (One, Arg0), ASLC)
                    Store (One, ASLE)
                    Store (Zero, Local2)
                    While (LAnd (LLess (Local2, 0xFA), LNotEqual (ASLC, Zero)))
                    {
                        Sleep (0x04)
                        Increment (Local2)
                    }

                    Return (Zero)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            ElseIf (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                Store (One, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            ElseIf (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                Store (0x06, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            ElseIf (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                Store (0x08, PFIT)
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                    Or (BCLP, 0x80000000, BCLP)
                    Store (0x02, ASLC)
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (Arg1, ALSI)
                    Store (One, ASLC)
                }
                Else
                {
                    Return (One)
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Name (OPBS, 0xFFFFFF00)
            Method (OPTS, 1, NotSerialized)
            {
                If (And (\_SB.VGAF, One))
                {
                    If (LEqual (Arg0, 0x03))
                    {
                        Store (ASLS, OPBS)
                    }
                }
            }

            Method (OWAK, 1, NotSerialized)
            {
                If (And (\_SB.VGAF, One))
                {
                    If (LEqual (Arg0, 0x03))
                    {
                        Store (OPBS, ASLS)
                        Store (One, GSES)
                    }

                    Store (One, \_SB.PCI0.IGPU.CLID)
                }
            }

            Method (OGCD, 0, NotSerialized)
            {
                If (LEqual (CADL, Zero))
                {
                    Store (LCDM, \_SB.CSTE)
                    Return (Zero)
                }

                Store (OA2D (CADL), \_SB.CSTE)
                If (LEqual (CAL2, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL2), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL3, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL3), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL4, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL4), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL5, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL5), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL6, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL6), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL7, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL7), \_SB.CSTE, \_SB.CSTE)
                If (LEqual (CAL8, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CAL8), \_SB.CSTE, \_SB.CSTE)
                Return (Zero)
            }

            Method (OGND, 0, NotSerialized)
            {
                If (LEqual (NADL, Zero))
                {
                    Store (LCDM, \_SB.NSTE)
                    Return (Zero)
                }

                Store (OA2D (NADL), \_SB.NSTE)
                If (LEqual (NDL2, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL2), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL3, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL3), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL4, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL4), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL5, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL5), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL6, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL6), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL7, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL7), \_SB.NSTE, \_SB.NSTE)
                If (LEqual (NDL8, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (NDL8), \_SB.NSTE, \_SB.NSTE)
                Return (Zero)
            }

            Method (OGCA, 0, NotSerialized)
            {
                SOID ()
                If (LEqual (CPDL, Zero))
                {
                    Store (LCDM, \_SB.OCAD)
                    Return (Zero)
                }

                Store (OA2D (CPDL), \_SB.OCAD)
                If (LEqual (CPL2, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL2), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL3, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL3), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL4, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL4), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL5, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL5), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL6, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL6), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL7, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL7), \_SB.OCAD, \_SB.OCAD)
                If (LEqual (CPL8, Zero))
                {
                    Return (Zero)
                }

                Or (OA2D (CPL8), \_SB.OCAD, \_SB.OCAD)
                Return (Zero)
            }

            Method (OA2D, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (Arg0, LFID))
                {
                    Or (Local0, LCDM, Local0)
                }

                If (LEqual (Arg0, CRID))
                {
                    Or (Local0, CRTM, Local0)
                }

                If (LEqual (Arg0, TVID))
                {
                    Or (Local0, TVOM, Local0)
                }

                If (LEqual (Arg0, HDID))
                {
                    Or (Local0, HDMM, Local0)
                }

                If (LEqual (Arg0, DVID))
                {
                    Or (Local0, DVIM, Local0)
                }

                If (LEqual (Arg0, DPID))
                {
                    Or (Local0, DPOM, Local0)
                }

                Return (Local0)
            }

            Method (D2OA, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (And (Arg0, LCDM))
                {
                    Return (LFID)
                }

                If (And (Arg0, CRTM))
                {
                    Return (CRID)
                }

                If (And (Arg0, TVOM))
                {
                    Return (TVID)
                }

                If (And (Arg0, HDMM))
                {
                    Return (HDID)
                }

                If (And (Arg0, DVIM))
                {
                    Return (DVID)
                }

                If (And (Arg0, DPOM))
                {
                    Return (DPID)
                }

                Return (Local0)
            }

            Name (DDID, Zero)
            Method (WNDD, 1, NotSerialized)
            {
                Store (GDOA (Arg0), DDID)
                Store (DDID, NADL)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL2)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL3)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL4)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL5)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL6)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL7)
                Store (GDOA (Arg0), DDID)
                Store (DDID, NDL8)
                Store (Zero, CONT)
            }

            Name (CONT, Zero)
            Method (GDOA, 1, NotSerialized)
            {
                While (LLess (CONT, 0x08))
                {
                    Store (One, Local0)
                    ShiftLeft (Local0, CONT, Local0)
                    And (\_SB.NSTE, Local0, Local1)
                    Increment (CONT)
                    Store (D2OA (Local1), Local1)
                    If (LNotEqual (Local1, Zero))
                    {
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Name (LFID, Ones)
            Name (CRID, Ones)
            Name (TVID, Ones)
            Name (DPID, Ones)
            Name (HDID, Ones)
            Name (DVID, Ones)
            Method (GOID, 1, NotSerialized)
            {
                And (Arg0, 0x0F00, Local0)
                If (LEqual (Local0, 0x0100))
                {
                    Store (Arg0, CRID)
                }

                If (LEqual (Local0, 0x0200))
                {
                    Store (Arg0, TVID)
                }

                If (LEqual (Local0, 0x0400))
                {
                    Store (Arg0, LFID)
                }

                If (LEqual (Arg0, 0x0300))
                {
                    Store (Arg0, HDID)
                }
            }

            Method (SOID, 0, NotSerialized)
            {
                GOID (CPDL)
                GOID (CPL2)
                GOID (CPL3)
                GOID (CPL4)
                GOID (CPL5)
                GOID (CPL6)
                GOID (CPL7)
                GOID (CPL8)
            }

            Device (\_SB.MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS2, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40004000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        If (LEqual (PNHM, 0x000306C1))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (CRS2)
                }
            }

            Name (HGAP, Zero)
            Name (QATH, Zero)
            Name (DONE, Zero)
            Name (TLST, One)
            Name (BLCD, 0x0101)
            Name (BCRT, 0x0202)
            Name (BTVO, 0x0808)
            Name (BHDM, 0x0404)
            Name (BDVI, 0x4040)
            Name (BDPO, 0x8080)
            Name (HGDP, Zero)
            Name (DSM2, Zero)
            Name (HHKM, One)
            Name (BCMD, Zero)
            Name (BRNC, Zero)
            Name (PCTG, Package (0x0B) {})
            Name (NXTD, One)
            Name (LCDM, 0x0808)
            Name (CRTM, 0x0101)
            Name (TVOM, 0x0202)
            Name (HDMM, 0x0404)
            Name (DVIM, 0x4040)
            Name (DPOM, 0x8080)
            Method (PRST, 0, NotSerialized)
            {
                If (LEqual (REG0, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (NATK, 0, NotSerialized)
            {
                Return (One)
            }

            Method (D2AF, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (And (Arg0, LCDM))
                {
                    Or (Local0, One, Local0)
                }

                If (And (Arg0, CRTM))
                {
                    Or (Local0, 0x02, Local0)
                }

                If (And (Arg0, TVOM))
                {
                    Or (Local0, 0x04, Local0)
                }

                If (And (Arg0, DVIM))
                {
                    Or (Local0, 0x08, Local0)
                }

                If (And (Arg0, HDMM))
                {
                    Or (Local0, 0x10, Local0)
                }

                If (And (Arg0, DPOM))
                {
                    Or (Local0, 0x20, Local0)
                }

                If (LNot (Local0))
                {
                    Return (NXTD)
                }

                Return (Local0)
            }

            Method (GCDD, 0, NotSerialized)
            {
                OGCD ()
                Return (\_SB.CSTE)
            }

            Method (GCBL, 1, NotSerialized)
            {
                Store (Zero, Local0)
                And (Arg0, 0x7FFFFFFF, Arg0)
                While (LLess (Local0, 0x0A))
                {
                    Store (DerefOf (Index (PCTG, Local0)), Local1)
                    Store (DerefOf (Index (PCTG, Add (Local0, One))), Local2)
                    If (LAnd (LLessEqual (Arg0, Local1), LGreater (Arg0, Local2)))
                    {
                        Break
                    }

                    Increment (Local0)
                }

                Return (Local0)
            }

            Method (UPBL, 0, NotSerialized)
            {
                If (BRNC)
                {
                    GCDD ()
                    Store (And (D2AF (\_SB.CSTE), One), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Return (Zero)
                    }

                    Store (CBLV, Local0)
                    Store (Zero, BCMD)
                    Notify (LCDD, 0x86)
                    Store (0x012C, Local2)
                    And (Local0, 0x7FFFFFFF, Local1)
                    If (LGreaterEqual (Local1, DerefOf (Index (PCTG, One))))
                    {
                        Store (Zero, Local2)
                        Store (One, Local1)
                    }

                    If (LLess (\MSOS (), \OSW8))
                    {
                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LNot (And (Local1, 0x80000000)))
                            {
                                Store (Local0, Local1)
                            }

                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }
                    }

                    If (LAnd (LNot (BCMD), Local1))
                    {
                        If (LLess (\MSOS (), \OSW8))
                        {
                            Store (GCBL (CBLV), Local3)
                            Subtract (0x0A, Local3, Local3)
                            Store (Local3, LBTN)
                        }
                    }
                }
                Else
                {
                    If (LLess (LBTN, 0x0F))
                    {
                        Increment (LBTN)
                    }
                    Else
                    {
                        Store (0x0F, LBTN)
                    }

                    \_SB.PCI0.LPCB.EC0.STBR ()
                }

                Return (Zero)
            }

            Method (DWBL, 0, NotSerialized)
            {
                If (BRNC)
                {
                    GCDD ()
                    Store (And (D2AF (\_SB.CSTE), One), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Return (Zero)
                    }

                    Store (CBLV, Local0)
                    Store (Zero, BCMD)
                    Notify (LCDD, 0x87)
                    Store (0x012C, Local2)
                    And (Local0, 0x7FFFFFFF, Local1)
                    If (LLessEqual (Local1, DerefOf (Index (PCTG, 0x0A))))
                    {
                        Store (Zero, Local2)
                        Store (One, Local1)
                    }

                    If (LLess (\MSOS (), \OSW8))
                    {
                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LNot (And (Local1, 0x80000000)))
                            {
                                Store (Local0, Local1)
                            }

                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }
                    }

                    If (LAnd (LNot (BCMD), Local1))
                    {
                        If (LLess (\MSOS (), \OSW8))
                        {
                            Store (GCBL (CBLV), Local3)
                            Subtract (0x0A, Local3, Local3)
                            Store (Local3, LBTN)
                        }
                    }
                }
                Else
                {
                    If (LGreater (LBTN, Zero))
                    {
                        Decrement (LBTN)
                    }

                    If (LGreater (LBTN, 0x0F))
                    {
                        Store (0x0F, LBTN)
                    }

                    \_SB.PCI0.LPCB.EC0.STBR ()
                }

                Return (Zero)
            }

            Method (ADVD, 0, NotSerialized)
            {
                If (And (DOSF, 0x03))
                {
                    GCDD ()
                    GCAD ()
                    GVIF ()
                }
                Else
                {
                    OGCA ()
                    OGCD ()
                }

                If (\NATK ())
                {
                    If (UPDN)
                    {
                        Store (D2AF (\_SB.CSTE), NXTD)
                        Store (Zero, UPDN)
                    }

                    Store (Zero, Local0)
                    Store (D2AF (\_SB.OCAD), Local1)
                    Store (Zero, Local2)
                    If (And (\_SB.VGAF, One))
                    {
                        And (\_SB.VBIF, 0x08, Local2)
                    }

                    If (And (LEqual (Local2, 0x08), And (\_SB.VGAF, One)))
                    {
                        And (NXTD, Local1, NXTD)
                        Store (NXTD, Local0)
                    }

                    While (LNotEqual (NXTD, Local0))
                    {
                        GNAD ()
                        And (NXTD, Local1, Local0)
                    }

                    Return (NXTD)
                }

                Return (GNDD ())
            }

            Method (GCAD, 0, NotSerialized)
            {
                OGCA ()
                Return (\_SB.OCAD)
            }

            Method (GVIF, 0, NotSerialized)
            {
                Store (0x67, \_SB.VBIF)
                Store (Zero, \_SB.SFUN)
                ISMI (0x95)
                Return (\_SB.VBIF)
            }

            Method (GNAD, 0, NotSerialized)
            {
                Increment (NXTD)
                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x03)))
                {
                    Increment (NXTD)
                }

                If (And (DOSF, 0x03))
                {
                    If (LEqual (NXTD, 0x05))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (NXTD, 0x06))
                    {
                        Increment (NXTD)
                    }
                }

                If (LEqual (NXTD, 0x07))
                {
                    Increment (NXTD)
                }

                If (And (DOSF, 0x03))
                {
                    If (LEqual (NXTD, 0x09))
                    {
                        Increment (NXTD)
                    }
                }

                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x0A)))
                {
                    Increment (NXTD)
                }

                If (LEqual (NXTD, 0x0B))
                {
                    Increment (NXTD)
                }

                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x0C)))
                {
                    Increment (NXTD)
                }

                While (LAnd (LGreater (NXTD, 0x0C), LLess (NXTD, 0x10)))
                {
                    Increment (NXTD)
                }

                If (LEqual (DOSF, One))
                {
                    If (LEqual (NXTD, 0x11))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (NXTD, 0x12))
                    {
                        Increment (NXTD)
                    }
                }

                If (LEqual (NXTD, 0x13))
                {
                    Increment (NXTD)
                }

                If (LEqual (DOSF, One))
                {
                    While (LAnd (LGreaterEqual (NXTD, 0x14), LLess (NXTD, 0x20)))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (NXTD, 0x21))
                    {
                        Increment (NXTD)
                    }

                    If (LEqual (NXTD, 0x22))
                    {
                        Increment (NXTD)
                    }
                }

                If (LEqual (NXTD, 0x23))
                {
                    Increment (NXTD)
                }

                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x24)))
                {
                    Increment (NXTD)
                }

                While (LAnd (LGreater (NXTD, 0x24), LLess (NXTD, 0x28)))
                {
                    Increment (NXTD)
                }

                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x28)))
                {
                    Increment (NXTD)
                }

                While (LAnd (LGreater (NXTD, 0x28), LLess (NXTD, 0x30)))
                {
                    Increment (NXTD)
                }

                If (LAnd (LEqual (DOSF, One), LEqual (NXTD, 0x30)))
                {
                    Increment (NXTD)
                }

                If (LGreater (NXTD, 0x30))
                {
                    Store (One, NXTD)
                }

                Return (Zero)
            }

            Method (GNDD, 0, NotSerialized)
            {
                OGND ()
                Return (\_SB.NSTE)
            }

            Name (DOSF, One)
            Name (UPDN, One)
            Method (AF2D, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (And (Arg0, One))
                {
                    Or (Local0, LCDM, Local0)
                }

                If (And (Arg0, 0x02))
                {
                    Or (Local0, CRTM, Local0)
                }

                If (And (Arg0, 0x04))
                {
                    Or (Local0, TVOM, Local0)
                }

                If (And (Arg0, 0x08))
                {
                    Or (Local0, DVIM, Local0)
                }

                If (And (Arg0, 0x10))
                {
                    Or (Local0, HDMM, Local0)
                }

                If (And (Arg0, 0x20))
                {
                    Or (Local0, DPOM, Local0)
                }

                If (LNot (Local0))
                {
                    Return (LCDM)
                }

                Return (Local0)
            }

            Method (SWHD, 1, Serialized)
            {
                Store (One, UPDN)
                If (LEqual (DOSF, One))
                {
                    If (\NATK ())
                    {
                        Store (Zero, \_SB.SFUN)
                    }
                    Else
                    {
                        Store (0x04, \_SB.SFUN)
                    }

                    Store (Arg0, \_SB.SSTE)
                    If (\NATK ())
                    {
                        Store (AF2D (Arg0), \_SB.NSTE)
                        Store (\_SB.NSTE, \_SB.SSTE)
                    }

                    ISMI (0x94)
                    Notify (\_SB.PCI0.IGPU, 0x81)
                }
                Else
                {
                    Store (One, \_SB.PCI0.IGPU.CEVT)
                    Store (0x03, \_SB.PCI0.IGPU.CSTS)
                    If (LNotEqual (\_SB.OCAD, \_SB.OPAD))
                    {
                        Store (\_SB.OCAD, \_SB.OPAD)
                        If (LEqual (OSFG, OSXP))
                        {
                            Notify (\_SB.PCI0, Zero)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.IGPU, Zero)
                        }

                        Sleep (0x03E8)
                    }

                    Store (AF2D (Arg0), \_SB.NSTE)
                    WNDD (\_SB.NSTE)
                    Notify (\_SB.PCI0.IGPU, 0x80)
                }

                Return (Zero)
            }

            Method (GCDS, 0, NotSerialized)
            {
                If (And (DOSF, 0x03))
                {
                    GCDD ()
                    GCAD ()
                    GVIF ()
                }
                Else
                {
                    OGCA ()
                    OGCD ()
                }

                Return (D2AF (\_SB.CSTE))
            }
            
            OperationRegion (RMPC, PCI_Config, 0x10, 4)
            Field (RMPC, AnyAcc, NoLock, Preserve)
            {
                BAR1,32,
            }
            Device (PNLF)
            {
                // normal PNLF declares (note some of this probably not necessary)
                Name (_ADR, Zero)
                Name (_HID, EisaId ("APP0002"))
                Name (_CID, "backlight")
                Name (_UID, 15)
                Name (_STA, 0x0B)
                //define hardware register access for brightness
                // lower nibble of BAR1 is status bits and not part of the address
                OperationRegion (BRIT, SystemMemory, And(^BAR1, Not(0xF)), 0xe1184)
                Field (BRIT, AnyAcc, Lock, Preserve)
                {
                    Offset(0x48250),
                    LEV2, 32,
                    LEVL, 32,
                    Offset(0x70040),
                    P0BL, 32,
                    Offset(0xc8250),
                    LEVW, 32,
                    LEVX, 32,
                    Offset(0xe1180),
                    PCHL, 32,
                }
                // LMAX: use 0xad9/0x56c/0x5db to force OS X value
                //       or use any arbitrary value
                //       or use 0 to capture BIOS setting
                Name (LMAX, 0xad9)
                // KMAX: defines the unscaled range in the _BCL table below
                Name (KMAX, 0xad9)
                // _INI deals with differences between native setting and desired
                Method (_INI, 0, NotSerialized)
                {
                    // This 0xC value comes from looking what OS X initializes this
                    // register to after display sleep (using ACPIDebug/ACPIPoller)
                    Store(0xC0000000, LEVW)
                    // determine LMAX to use
                    If (LNot(LMAX)) { Store(ShiftRight(LEVX,16), LMAX) }
                    If (LNot(LMAX)) { Store(KMAX, LMAX) }
                    If (LNotEqual(LMAX, KMAX))
                    {
                        // Scale all the values in _BCL to the PWM max in use
                        Store(0, Local0)
                        While (LLess(Local0, SizeOf(_BCL)))
                        {
                            Store(DerefOf(Index(_BCL,Local0)), Local1)
                            Divide(Multiply(Local1,LMAX), KMAX,, Local1)
                            Store(Local1, Index(_BCL,Local0))
                            Increment(Local0)
                        }
                        // Also scale XRGL and XRGH values
                        Divide(Multiply(XRGL,LMAX), KMAX,, XRGL)
                        Divide(Multiply(XRGH,LMAX), KMAX,, XRGH)
                    }
                    // adjust values to desired LMAX
                    Store(ShiftRight(LEVX,16), Local1)
                    If (LNotEqual(Local1, LMAX))
                    {
                        Store(And(LEVX,0xFFFF), Local0)
                        If (LOr(LNot(Local0),LNot(Local1))) { Store(LMAX, Local0) Store(LMAX, Local1) }
                        Divide(Multiply(Local0,LMAX), Local1,, Local0)
                        //REVIEW: wait for vblank before setting new PWM config
                        //Store(P0BL, Local7)
                        //While (LEqual (P0BL, Local7)) {}
                        Store(Or(Local0,ShiftLeft(LMAX,16)), LEVX)
                    }
                }
                // _BCM/_BQC: set/get for brightness level
                Method (_BCM, 1, NotSerialized)
                {
                    // store new backlight level
                    Store(Match(_BCL, MGE, Arg0, MTR, 0, 2), Local0)
                    If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                    Store(Or(DerefOf(Index(_BCL,Local0)),ShiftLeft(LMAX,16)), LEVX)
                }
                Method (_BQC, 0, NotSerialized)
                {
                    Store(Match(_BCL, MGE, And(LEVX, 0xFFFF), MTR, 0, 2), Local0)
                    If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                    Return(DerefOf(Index(_BCL, Local0)))
                }
                Method (_DOS, 1, NotSerialized)
                {
                    // Note: Some systems have this defined in DSDT, so uncomment
                    // the next line if that is the case.
                    //External(^^_DOS, MethodObj)
                    ^^_DOS(Arg0)
                }
                // extended _BCM/_BQC for setting "in between" levels
                Method (XBCM, 1, NotSerialized)
                {
                    // store new backlight level
                    If (LGreater(Arg0, XRGH)) { Store(XRGH, Arg0) }
                    If (LAnd(Arg0, LLess(Arg0, XRGL))) { Store(XRGL, Arg0) }
                    Store(Or(Arg0,ShiftLeft(LMAX,16)), LEVX)
                }
                Method (XBQC, 0, NotSerialized)
                {
                    Store(And(LEVX,0xFFFF), Local0)
                    If (LGreater(Local0, XRGH)) { Store(XRGH, Local0) }
                    If (LAnd(Local0, LLess(Local0, XRGL))) { Store(XRGL, Local0) }
                    Return(Local0)
                }
                // Set XOPT bit 0 to disable smooth transitions
                // Set XOPT bit 1 to wait for native BacklightHandler
                // Set XOPT bit 2 to force use of native BacklightHandler
                Name (XOPT, 0x02)
                // XRGL/XRGH: defines the valid range
                Name (XRGL, 25)
                Name (XRGH, 2777)
                // _BCL: returns list of valid brightness levels
                // first two entries describe ac/battery power levels
                Name (_BCL, Package()
                {
                    2777,
                    748,
                    0,
                    35, 39, 44, 50,
                    58, 67, 77, 88,
                    101, 115, 130, 147,
                    165, 184, 204, 226,
                    249, 273, 299, 326,
                    354, 383, 414, 446,
                    479, 514, 549, 587,
                    625, 665, 706, 748,
                    791, 836, 882, 930,
                    978, 1028, 1079, 1132,
                    1186, 1241, 1297, 1355,
                    1414, 1474, 1535, 1598,
                    1662, 1728, 1794, 1862,
                    1931, 2002, 2074, 2147,
                    2221, 2296, 2373, 2452,
                    2531, 2612, 2694, 2777,
                })
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "AAPL,ig-platform-id", Buffer() { 0x00, 0x00, 0x26, 0x0D },
                    "hda-gfx", Buffer() { "onboard-1" },
                })
            }
        }
    }
}

