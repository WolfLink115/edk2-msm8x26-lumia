/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of csrt.acp, Wed Nov  3 03:01:31 2021
 *
 * ACPI Data Table [CSRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "CSRT"    [Core System Resource Table]
[004h 0004   4]                 Table Length : 00000094
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 00     /* Incorrect checksum, should be B1 */
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   4]                       Length : 00000038
[028h 0040   4]                    Vendor ID : 4D4F4351
[02Ch 0044   4]                 Subvendor ID : 00000000
[030h 0048   2]                    Device ID : 100B
[032h 0050   2]                 Subdevice ID : 0000
[034h 0052   2]                     Revision : 0000
[036h 0054   2]                     Reserved : 0000
[038h 0056   4]           Shared Info Length : 00000000

[03Ch 0060   2]                Major Version : 0020
[03Eh 0062   2]                Minor Version : 0000
[040h 0064   4]        MMIO Base Address Low : 00000002
[044h 0068   4]       MMIO Base Address High : 00000001
[048h 0072   4]                GSI Interrupt : 00000002
[04Ch 0076   1]           Interrupt Polarity : 00
[04Dh 0077   1]               Interrupt Mode : 70
[04Eh 0078   1]                 Num Channels : 01
[04Fh 0079   1]            DMA Address Width : F9
[050h 0080   2]            Base Request Line : 0000
[052h 0082   2]        Num Handshake Signals : 0000
[054h 0084   4]               Max Block Size : 00007FFD

[03Ch 0060   4]                       Length : 00000020
[040h 0064   2]                         Type : 0002
[042h 0066   2]                      Subtype : 0000
[044h 0068   4]                          UID : 00000001
[048h 0072  20]                 ResourceInfo : \
    02 00 00 00 00 70 01 F9 00 00 00 00 FD 7F 00 00 \
    23 00 00 00 

[05Ch 0092   4]                       Length : 00000038
[060h 0096   4]                    Vendor ID : 4D4F4351
[064h 0100   4]                 Subvendor ID : 00000000
[068h 0104   2]                    Device ID : 100A
[06Ah 0106   2]                 Subdevice ID : 0000
[06Ch 0108   2]                     Revision : 0000
[06Eh 0110   2]                     Reserved : 0000
[070h 0112   4]           Shared Info Length : 00000000

[074h 0116   2]                Major Version : 0020
[076h 0118   2]                Minor Version : 0000
[078h 0120   4]        MMIO Base Address Low : 00000002
[07Ch 0124   4]       MMIO Base Address High : 00000001
[080h 0128   4]                GSI Interrupt : 00000001
[084h 0132   1]           Interrupt Polarity : 00
[085h 0133   1]               Interrupt Mode : 10
[086h 0134   1]                 Num Channels : 02
[087h 0135   1]            DMA Address Width : F9
[088h 0136   2]            Base Request Line : 0000
[08Ah 0138   2]        Num Handshake Signals : 0000
[08Ch 0140   4]               Max Block Size : 0124F800

[074h 0116   4]                       Length : 00000020
[078h 0120   2]                         Type : 0002
[07Ah 0122   2]                      Subtype : 0000
[07Ch 0124   4]                          UID : 00000001
[080h 0128  20]                 ResourceInfo : \
    01 00 00 00 00 10 02 F9 00 00 00 00 00 F8 24 01 \
    28 00 00 00 

Raw Table Data: Length 148 (0x94)

    0000: 43 53 52 54 94 00 00 00 00 00 51 43 4F 4D 20 20  // CSRT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 38 00 00 00 51 43 4F 4D 00 00 00 00  // ....8...QCOM....
    0030: 0B 10 00 00 00 00 00 00 00 00 00 00 20 00 00 00  // ............ ...
    0040: 02 00 00 00 01 00 00 00 02 00 00 00 00 70 01 F9  // .............p..
    0050: 00 00 00 00 FD 7F 00 00 23 00 00 00 38 00 00 00  // ........#...8...
    0060: 51 43 4F 4D 00 00 00 00 0A 10 00 00 00 00 00 00  // QCOM............
    0070: 00 00 00 00 20 00 00 00 02 00 00 00 01 00 00 00  // .... ...........
    0080: 01 00 00 00 00 10 02 F9 00 00 00 00 00 F8 24 01  // ..............$.
    0090: 28 00 00 00                                      // (...
