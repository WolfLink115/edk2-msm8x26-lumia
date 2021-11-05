/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.aml, Wed Nov  3 03:03:38 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000F32 (3890)
 *     Revision         0x01
 *     Checksum         0xE4
 *     OEM ID           "NOKIA "
 *     OEM Table ID     "MSM8960 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x04000000 (67108864)
 */
DefinitionBlock ("", "SSDT", 1, "NOKIA ", "MSM8960 ", 0x00000003)
{
    External (_SB_.ABD_.AVBL, IntObj)
    External (_SB_.ADSP, UnknownObj)
    External (_SB_.DBFL, IntObj)
    External (_SB_.ESNL, IntObj)
    External (_SB_.I2C4, UnknownObj)
    External (_SB_.IPC0, UnknownObj)
    External (_SB_.PEP0, UnknownObj)
    External (_SB_.PM01, UnknownObj)
    External (_SB_.PMIC, UnknownObj)
    External (_SB_.PRXY, UnknownObj)
    External (_SB_.PRXY.FLD0, FieldUnitObj)

    Scope (\_SB)
    {
        Device (NREG)
        {
            Name (_HID, "ODDT_REG")  // _HID: Hardware ID
        }

        Device (VIB2)
        {
            Name (_HID, "ODDT_VIB")  // _HID: Hardware ID
            Name (_CID, "ACPIODDT_VIB")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.VIB2._CRS.RBUF */
            }
        }

        Device (NCPU)
        {
            Name (_HID, "ODDT_CPU")  // _HID: Hardware ID
        }

        Device (EGP0)
        {
            Name (_HID, "ENOGPIO")  // _HID: Hardware ID
            Name (_CID, "ENOGPIO")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005E
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x006A
                        }
                    GpioIo (Shared, PullDown, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0041
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x006C
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x006B
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.PWIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0618
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003D
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0630
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0057
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0021
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0022
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001F
                        }
                    Memory32Fixed (ReadWrite,
                        0xFC4B80B0,         // Address Base
                        0x00000004,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.EGP0._CRS.RBUF */
            }
        }

        Device (SEN1)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.IPC0, 
                \_SB.ADSP
            })
            Name (_HID, "QCOM2495")  // _HID: Hardware ID
            Method (AROT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x03)
                {
                    "1 0 0", 
                    "0 -1 0", 
                    "0 0 1"
                })
                Return (RBUF) /* \_SB_.SEN1.AROT.RBUF */
            }

            Method (GROT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x03)
                {
                    "-1 0 0", 
                    "0 1 0", 
                    "0 0 -1"
                })
                Return (RBUF) /* \_SB_.SEN1.GROT.RBUF */
            }

            Method (MROT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x03)
                {
                    "0 1 0", 
                    "1 0 0", 
                    "0 0 -1"
                })
                Return (RBUF) /* \_SB_.SEN1.MROT.RBUF */
            }

            Device (ACT1)
            {
                Name (_HID, "SSC_NOKIA_ACT_DETECT")  // _HID: Hardware ID
                Method (MODE, 0, NotSerialized)
                {
                    Name (RBUF, Buffer (One)
                    {
                         0x01                                             // .
                    })
                    Return (RBUF) /* \_SB_.SEN1.ACT1.MODE.RBUF */
                }
            }

            Device (STP1)
            {
                Name (_HID, "SSC_NOKIA_STEP_COUNTER")  // _HID: Hardware ID
                Method (MODE, 0, NotSerialized)
                {
                    Name (RBUF, Buffer (One)
                    {
                         0x02                                             // .
                    })
                    Return (RBUF) /* \_SB_.SEN1.STP1.MODE.RBUF */
                }
            }

            Device (GES1)
            {
                Name (_HID, "SSC_NOKIA_GESTURE_RECOGNITION")  // _HID: Hardware ID
                Method (MODE, 0, NotSerialized)
                {
                    Name (RBUF, Buffer (One)
                    {
                         0x03                                             // .
                    })
                    Return (RBUF) /* \_SB_.SEN1.GES1.MODE.RBUF */
                }
            }

            Device (SAC1)
            {
                Name (_HID, "SSC_SENSOR_ALGORITHM_CONTROL")  // _HID: Hardware ID
                Method (MODE, 0, NotSerialized)
                {
                    Name (RBUF, Buffer (One)
                    {
                         0x64                                             // d
                    })
                    Return (RBUF) /* \_SB_.SEN1.SAC1.MODE.RBUF */
                }
            }
        }

        Device (APS1)
        {
            Name (_HID, "QPDS_APS")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PRXY, 
                \_SB.I2C4
            })
            Method (PRIM, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x01                                             // .
                })
                Return (RBUF) /* \_SB_.APS1.PRIM.RBUF */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0039, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C4",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0041
                        }
                })
                Return (RBUF) /* \_SB_.APS1._CRS.RBUF */
            }
        }

        Device (NEDD)
        {
            Name (_HID, "NOKI0B00")  // _HID: Hardware ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PM01, 
                \_SB.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0090
                        }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0021
                        }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001F
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x009A
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0022
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0021
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001F
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0022
                        }
                })
                Return (RBUF) /* \_SB_.NEDD._CRS.RBUF */
            }

            Method (NIRQ, 0, NotSerialized)
            {
                Return (Package (0x04)
                {
                    "BATT_PRES", 
                    "WC_DET", 
                    "WC_CHG", 
                    "CHG_GONE"
                })
            }

            Method (NGIO, 0, NotSerialized)
            {
                Return (Package (0x04)
                {
                    "WC_EN_W", 
                    "WC_DET", 
                    "WC_CHG", 
                    "WC_EN_R"
                })
            }
        }

        Device (NBDD)
        {
            Name (_HID, "NOKI0BF0")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0090
                        }
                })
                Return (RBUF) /* \_SB_.NBDD._CRS.RBUF */
            }
        }

        Device (BIFA)
        {
            Name (_HID, "MSHW1002")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.BIFA._CRS.RBUF */
            }
        }

        Device (NRSD)
        {
            Name (_HID, "NRSD0001")  // _HID: Hardware ID
            Name (_CID, "ACPINRSD0001")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PRXY
            })
            Name (PGID, Buffer (0x0A)
            {
                "\\_SB.NRSD"
            })
            Name (DBUF, Buffer (DBFL) {})
            CreateByteField (DBUF, Zero, STAT)
            CreateByteField (DBUF, 0x02, DVAL)
            CreateField (DBUF, 0x18, 0xA0, DEID)
            Method (_S1D, 0, NotSerialized)  // _S1D: S1 Device State
            {
                Return (0x03)
            }

            Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
            {
                Return (0x03)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                DEID = Buffer (ESNL) {}
                DVAL = Zero
                DEID = PGID /* \_SB_.NRSD.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PRXY.FLD0 = DBUF /* \_SB_.NRSD.DBUF */
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                DEID = Buffer (ESNL) {}
                DVAL = 0x03
                DEID = PGID /* \_SB_.NRSD.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PRXY.FLD0 = DBUF /* \_SB_.NRSD.DBUF */
                }
            }
        }

        Device (NFC1)
        {
            Name (_HID, "PN547")  // _HID: Hardware ID
            Name (_CID, "ACPIPN547")  // _CID: Compatible ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C3",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0015
                    }
            })
            Name (NFCP, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionNone,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0014
                    }
            })
            Scope (GIO0)
            {
                OperationRegion (NFPO, GeneralPurposeIo, Zero, One)
            }

            Field (\_SB.GIO0.NFPO, ByteAcc, NoLock, Preserve)
            {
                Connection (\_SB.NFC1.NFCP), 
                MGPE,   1
            }

            Method (POON, 0, NotSerialized)
            {
                MGPE = One
            }

            Method (POOF, 0, NotSerialized)
            {
                MGPE = Zero
            }

            Name (NFCF, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionNone,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0016
                    }
            })
            Scope (GIO0)
            {
                OperationRegion (NFFO, GeneralPurposeIo, Zero, One)
            }

            Field (\_SB.GIO0.NFFO, ByteAcc, NoLock, Preserve)
            {
                Connection (\_SB.NFC1.NFCF), 
                MGFE,   1
            }

            Method (FWON, 0, NotSerialized)
            {
                MGFE = One
            }

            Method (FWOF, 0, NotSerialized)
            {
                MGFE = Zero
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Debug = "Method NFC _DSM begin"
                If ((Arg0 == ToUUID ("a2e7f6c4-9638-4485-9f12-6b4e20b60d63") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        Debug = "Method NFC _DSM QUERY"
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method NFC _DSM SETFWMODE"
                        If ((Arg3 == One))
                        {
                            \_SB.NFC1.POOF ()
                            \_SB.NFC1.FWON ()
                            Sleep (One)
                            \_SB.NFC1.POON ()
                            Sleep (0x14)
                        }

                        If ((Arg3 == Zero))
                        {
                            \_SB.NFC1.POOF ()
                            \_SB.NFC1.FWOF ()
                            Sleep (One)
                            \_SB.NFC1.POON ()
                            Sleep (0x14)
                        }
                    }

                    If ((Arg2 == 0x02))
                    {
                        Debug = "Method NFC _DSM SETPOWERMODE"
                        If ((Arg3 == One))
                        {
                            \_SB.NFC1.POON ()
                            Sleep (0x14)
                        }

                        If ((Arg3 == Zero))
                        {
                            \_SB.NFC1.POOF ()
                            Sleep (0x14)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        Debug = "Method NFC _DSM EEPROM Config"
                        Return (Buffer (0x03B4)
                        {
                            /* 0000 */  0x54, 0x65, 0x73, 0x6C, 0x61, 0x00, 0x00, 0x00,  // Tesla...
                            /* 0008 */  0x00, 0x00, 0x00, 0x20, 0x08, 0x01, 0x1C, 0x00,  // ... ....
                            /* 0010 */  0x02, 0x01, 0x01, 0x03, 0x01, 0x11, 0x04, 0x01,  // ........
                            /* 0018 */  0x01, 0x06, 0x01, 0x01, 0x08, 0x01, 0x01, 0x0E,  // ........
                            /* 0020 */  0x01, 0x01, 0x40, 0x01, 0x01, 0x41, 0x01, 0x02,  // ..@..A..
                            /* 0028 */  0x43, 0x01, 0x00, 0x5E, 0x01, 0x01, 0xCD, 0x01,  // C..^....
                            /* 0030 */  0x0F, 0x0D, 0x03, 0x04, 0xFF, 0x05, 0x0D, 0x06,  // ........
                            /* 0038 */  0x06, 0xFF, 0x05, 0x00, 0x00, 0x00, 0x0D, 0x03,  // ........
                            /* 0040 */  0x06, 0x37, 0x18, 0x0D, 0x04, 0x32, 0x03, 0x40,  // .7...2.@
                            /* 0048 */  0x3D, 0x0D, 0x03, 0x0A, 0x48, 0x10, 0x0D, 0x06,  // =...H...
                            /* 0050 */  0x06, 0x2F, 0x8F, 0x05, 0x80, 0x0C, 0x0D, 0x06,  // ./......
                            /* 0058 */  0x6C, 0x2F, 0x8F, 0x05, 0x80, 0x0C, 0x0D, 0x06,  // l/......
                            /* 0060 */  0x70, 0x2F, 0x8F, 0x05, 0x80, 0x12, 0x0D, 0x06,  // p/......
                            /* 0068 */  0x74, 0x2F, 0x8F, 0x05, 0x80, 0x12, 0x0D, 0x06,  // t/......
                            /* 0070 */  0x78, 0x2F, 0x1F, 0x06, 0x80, 0x01, 0x0D, 0x06,  // x/......
                            /* 0078 */  0x7C, 0x2F, 0xAF, 0x05, 0x80, 0x0F, 0x0D, 0x06,  // |/......
                            /* 0080 */  0x80, 0x2F, 0xAF, 0x05, 0x80, 0x90, 0x0D, 0x06,  // ./......
                            /* 0088 */  0x84, 0x2F, 0xAF, 0x05, 0x80, 0x92, 0x0D, 0x06,  // ./......
                            /* 0090 */  0x88, 0x2F, 0x7F, 0x04, 0x80, 0x10, 0x0D, 0x06,  // ./......
                            /* 0098 */  0x98, 0x2F, 0xAF, 0x05, 0x80, 0x0F, 0x0D, 0x06,  // ./......
                            /* 00A0 */  0x0A, 0x2F, 0x8F, 0x05, 0x80, 0x0C, 0x0D, 0x06,  // ./......
                            /* 00A8 */  0x06, 0x30, 0xCF, 0x00, 0x08, 0x00, 0x0D, 0x06,  // .0......
                            /* 00B0 */  0x6C, 0x30, 0xCF, 0x00, 0x08, 0x00, 0x0D, 0x06,  // l0......
                            /* 00B8 */  0x70, 0x30, 0xCF, 0x00, 0x08, 0x00, 0x0D, 0x06,  // p0......
                            /* 00C0 */  0x74, 0x30, 0xDF, 0x00, 0x07, 0x00, 0x0D, 0x06,  // t0......
                            /* 00C8 */  0x78, 0x30, 0x3F, 0x00, 0x04, 0x00, 0x0D, 0x06,  // x0?.....
                            /* 00D0 */  0x7C, 0x30, 0xCF, 0x00, 0x07, 0x00, 0x0D, 0x06,  // |0......
                            /* 00D8 */  0x7D, 0x30, 0xCF, 0x00, 0x08, 0x00, 0x0D, 0x06,  // }0......
                            /* 00E0 */  0x88, 0x30, 0x5F, 0x00, 0x16, 0x00, 0x0D, 0x06,  // .0_.....
                            /* 00E8 */  0x0A, 0x30, 0xCF, 0x00, 0x08, 0x00, 0x0D, 0x03,  // .0......
                            /* 00F0 */  0x32, 0x14, 0x22, 0x0D, 0x03, 0x40, 0x14, 0x02,  // 2."..@..
                            /* 00F8 */  0x0D, 0x03, 0x04, 0x43, 0x20, 0x0D, 0x03, 0x06,  // ...C ...
                            /* 0100 */  0x43, 0xA0, 0x0D, 0x03, 0x10, 0x43, 0x20, 0x0D,  // C....C .
                            /* 0108 */  0x06, 0x06, 0x41, 0x80, 0x00, 0x00, 0x00, 0x0D,  // ..A.....
                            /* 0110 */  0x03, 0x06, 0x15, 0x00, 0x0D, 0x03, 0x20, 0x15,  // ...... .
                            /* 0118 */  0x00, 0x0D, 0x03, 0x32, 0x15, 0x01, 0x0D, 0x03,  // ...2....
                            /* 0120 */  0x38, 0x15, 0x00, 0x0D, 0x03, 0x3C, 0x15, 0x00,  // 8....<..
                            /* 0128 */  0x0D, 0x03, 0x40, 0x15, 0x00, 0x0D, 0x03, 0x44,  // ..@....D
                            /* 0130 */  0x15, 0x00, 0x0D, 0x03, 0x48, 0x15, 0x00, 0x0D,  // ....H...
                            /* 0138 */  0x03, 0x4C, 0x15, 0x00, 0x0D, 0x03, 0x50, 0x15,  // .L....P.
                            /* 0140 */  0x00, 0x0D, 0x03, 0x54, 0x15, 0x00, 0x0D, 0x03,  // ...T....
                            /* 0148 */  0x5A, 0x15, 0x00, 0x0D, 0x03, 0x6A, 0x15, 0x01,  // Z....j..
                            /* 0150 */  0x0D, 0x03, 0x8C, 0x15, 0x00, 0x0D, 0x03, 0x92,  // ........
                            /* 0158 */  0x15, 0x00, 0x0D, 0x03, 0x06, 0x16, 0x00, 0x0D,  // ........
                            /* 0160 */  0x03, 0x20, 0x16, 0x00, 0x0D, 0x03, 0x32, 0x16,  // . ....2.
                            /* 0168 */  0x00, 0x0D, 0x03, 0x38, 0x16, 0x00, 0x0D, 0x03,  // ...8....
                            /* 0170 */  0x3C, 0x16, 0x00, 0x0D, 0x03, 0x40, 0x16, 0x00,  // <....@..
                            /* 0178 */  0x0D, 0x03, 0x44, 0x16, 0x00, 0x0D, 0x03, 0x48,  // ..D....H
                            /* 0180 */  0x16, 0x00, 0x0D, 0x03, 0x4C, 0x16, 0x00, 0x0D,  // ....L...
                            /* 0188 */  0x03, 0x50, 0x16, 0x00, 0x0D, 0x03, 0x54, 0x16,  // .P....T.
                            /* 0190 */  0x00, 0x0D, 0x03, 0x5A, 0x16, 0x00, 0x0D, 0x03,  // ...Z....
                            /* 0198 */  0x6A, 0x16, 0x00, 0x0D, 0x03, 0x8C, 0x16, 0x00,  // j.......
                            /* 01A0 */  0x0D, 0x03, 0x92, 0x16, 0x00, 0x0D, 0x03, 0x32,  // .......2
                            /* 01A8 */  0x0D, 0x22, 0x0D, 0x03, 0x40, 0x0D, 0x02, 0x0D,  // ."..@...
                            /* 01B0 */  0x06, 0x20, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x0D,  // . J.....
                            /* 01B8 */  0x06, 0x32, 0x4A, 0x30, 0x0F, 0x01, 0x1F, 0x0D,  // .2J0....
                            /* 01C0 */  0x06, 0x38, 0x4A, 0x53, 0x07, 0x01, 0x1B, 0x0D,  // .8JS....
                            /* 01C8 */  0x06, 0x3C, 0x4A, 0x52, 0x07, 0x01, 0x1B, 0x0D,  // .<JR....
                            /* 01D0 */  0x06, 0x40, 0x4A, 0x12, 0x07, 0x00, 0x00, 0x0D,  // .@J.....
                            /* 01D8 */  0x06, 0x44, 0x4A, 0x33, 0x07, 0x01, 0x07, 0x0D,  // .DJ3....
                            /* 01E0 */  0x06, 0x48, 0x4A, 0x33, 0x07, 0x01, 0x07, 0x0D,  // .HJ3....
                            /* 01E8 */  0x06, 0x4C, 0x4A, 0x33, 0x07, 0x01, 0x07, 0x0D,  // .LJ3....
                            /* 01F0 */  0x06, 0x50, 0x4A, 0x11, 0x0F, 0x01, 0x07, 0x0D,  // .PJ.....
                            /* 01F8 */  0x06, 0x54, 0x4A, 0x33, 0x07, 0x01, 0x07, 0x0D,  // .TJ3....
                            /* 0200 */  0x06, 0x5A, 0x4A, 0x31, 0x07, 0x01, 0x07, 0x0D,  // .ZJ1....
                            /* 0208 */  0x06, 0x6A, 0x4A, 0x30, 0x0F, 0x01, 0x1F, 0x0D,  // .jJ0....
                            /* 0210 */  0x06, 0x8C, 0x4A, 0x33, 0x07, 0x01, 0x07, 0x0D,  // ..J3....
                            /* 0218 */  0x06, 0x92, 0x4A, 0x31, 0x07, 0x01, 0x07, 0x0D,  // ..J1....
                            /* 0220 */  0x06, 0x22, 0x2D, 0x50, 0x44, 0x0C, 0x00, 0x0D,  // ."-PD...
                            /* 0228 */  0x06, 0x34, 0x2D, 0x24, 0x77, 0x0C, 0x00, 0x0D,  // .4-$w...
                            /* 0230 */  0x06, 0x3A, 0x2D, 0x15, 0x47, 0x0D, 0x00, 0x0D,  // .:-.G...
                            /* 0238 */  0x06, 0x3E, 0x2D, 0x15, 0x47, 0x0D, 0x00, 0x0D,  // .>-.G...
                            /* 0240 */  0x06, 0x42, 0x2D, 0x15, 0x47, 0x0D, 0x00, 0x0D,  // .B-.G...
                            /* 0248 */  0x06, 0x46, 0x2D, 0x05, 0x47, 0x0E, 0x00, 0x0D,  // .F-.G...
                            /* 0250 */  0x06, 0x4A, 0x2D, 0x05, 0x37, 0x0C, 0x00, 0x0D,  // .J-.7...
                            /* 0258 */  0x06, 0x4E, 0x2D, 0x05, 0x37, 0x0C, 0x00, 0x0D,  // .N-.7...
                            /* 0260 */  0x06, 0x52, 0x2D, 0x05, 0x25, 0x0C, 0x00, 0x0D,  // .R-.%...
                            /* 0268 */  0x06, 0x56, 0x2D, 0x05, 0x9E, 0x0C, 0x00, 0x0D,  // .V-.....
                            /* 0270 */  0x06, 0x5C, 0x2D, 0x05, 0x69, 0x0C, 0x00, 0x0D,  // .\-.i...
                            /* 0278 */  0x06, 0x06, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // ..D.....
                            /* 0280 */  0x06, 0x08, 0x44, 0x00, 0x00, 0x00, 0x00, 0x0D,  // ..D.....
                            /* 0288 */  0x06, 0x22, 0x44, 0x22, 0x00, 0x02, 0x00, 0x0D,  // ."D"....
                            /* 0290 */  0x06, 0x30, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // .0D.....
                            /* 0298 */  0x06, 0x34, 0x44, 0x21, 0x00, 0x02, 0x00, 0x0D,  // .4D!....
                            /* 02A0 */  0x06, 0x35, 0x44, 0x21, 0x00, 0x02, 0x00, 0x0D,  // .5D!....
                            /* 02A8 */  0x06, 0x46, 0x44, 0x21, 0x00, 0x02, 0x00, 0x0D,  // .FD!....
                            /* 02B0 */  0x06, 0x4A, 0x44, 0x22, 0x00, 0x02, 0x00, 0x0D,  // .JD"....
                            /* 02B8 */  0x06, 0x4E, 0x44, 0x22, 0x00, 0x02, 0x00, 0x0D,  // .ND"....
                            /* 02C0 */  0x06, 0x52, 0x44, 0x22, 0x00, 0x02, 0x00, 0x0D,  // .RD"....
                            /* 02C8 */  0x06, 0x5C, 0x44, 0x21, 0x00, 0x02, 0x00, 0x0D,  // .\D!....
                            /* 02D0 */  0x06, 0x56, 0x44, 0x22, 0x00, 0x02, 0x00, 0x0D,  // .VD"....
                            /* 02D8 */  0x06, 0x6C, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // .lD.....
                            /* 02E0 */  0x06, 0x78, 0x44, 0xA2, 0x90, 0x03, 0x00, 0x0D,  // .xD.....
                            /* 02E8 */  0x06, 0x7C, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // .|D.....
                            /* 02F0 */  0x06, 0x80, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // ..D.....
                            /* 02F8 */  0x06, 0x84, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // ..D.....
                            /* 0300 */  0x06, 0x88, 0x44, 0xA1, 0x90, 0x03, 0x00, 0x0D,  // ..D.....
                            /* 0308 */  0x06, 0x0A, 0x44, 0xA3, 0x90, 0x03, 0x00, 0x0D,  // ..D.....
                            /* 0310 */  0x03, 0x78, 0x47, 0x00, 0x0D, 0x03, 0x88, 0x47,  // .xG....G
                            /* 0318 */  0x00, 0x0D, 0x06, 0x20, 0x42, 0x88, 0x10, 0xFF,  // ... B...
                            /* 0320 */  0xFF, 0x0D, 0x06, 0x32, 0x42, 0xF8, 0x10, 0xFF,  // ...2B...
                            /* 0328 */  0xFF, 0x0D, 0x06, 0x38, 0x42, 0x68, 0x10, 0xFF,  // ...8Bh..
                            /* 0330 */  0xFF, 0x0D, 0x06, 0x3C, 0x42, 0x68, 0x10, 0xFF,  // ...<Bh..
                            /* 0338 */  0xFF, 0x0D, 0x06, 0x40, 0x42, 0xF0, 0x10, 0xFF,  // ...@B...
                            /* 0340 */  0xFF, 0x0D, 0x06, 0x44, 0x42, 0x88, 0x10, 0xFF,  // ...DB...
                            /* 0348 */  0xFF, 0x0D, 0x06, 0x48, 0x42, 0x88, 0x10, 0xFF,  // ...HB...
                            /* 0350 */  0xFF, 0x0D, 0x06, 0x4C, 0x42, 0x88, 0x10, 0xFF,  // ...LB...
                            /* 0358 */  0xFF, 0x0D, 0x06, 0x50, 0x42, 0x90, 0x10, 0xFF,  // ...PB...
                            /* 0360 */  0xFF, 0x0D, 0x06, 0x54, 0x42, 0x88, 0x10, 0xFF,  // ...TB...
                            /* 0368 */  0xFF, 0x0D, 0x06, 0x5A, 0x42, 0x90, 0x10, 0xFF,  // ...ZB...
                            /* 0370 */  0xFF, 0x0D, 0x06, 0x6A, 0x42, 0xF8, 0x10, 0xFF,  // ...jB...
                            /* 0378 */  0xFF, 0x0D, 0x06, 0x8C, 0x42, 0x88, 0x10, 0xFF,  // ....B...
                            /* 0380 */  0xFF, 0x0D, 0x06, 0x92, 0x42, 0x90, 0x10, 0xFF,  // ....B...
                            /* 0388 */  0xFF, 0x0D, 0x06, 0x06, 0x42, 0x00, 0x00, 0xFF,  // ....B...
                            /* 0390 */  0xFF, 0x0D, 0x06, 0x9A, 0x42, 0x00, 0x00, 0xFF,  // ....B...
                            /* 0398 */  0xFF, 0x0D, 0x03, 0x06, 0x48, 0x19, 0x0D, 0x03,  // ....H...
                            /* 03A0 */  0x0C, 0x48, 0x19, 0x0D, 0x03, 0x00, 0x40, 0x04,  // .H....@.
                            /* 03A8 */  0x0D, 0x04, 0x06, 0x03, 0x00, 0x6E, 0x41, 0x01,  // .....nA.
                            /* 03B0 */  0x04, 0x43, 0x01, 0x00                           // .C..
                        })
                    }
                }
            }
        }

        Device (SMDH)
        {
            Name (_HID, "SMD_HELPER")  // _HID: Hardware ID
        }
    }
}

