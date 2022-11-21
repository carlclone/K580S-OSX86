/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of /Users/chenyuanpeng/Desktop/SSDT/SSDT-3.AML, Mon Jan  3 00:49:37 2022
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001DE (478)
 *     Revision         0x01
 *     Checksum         0xCA
 *     OEM ID           "HASEE "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("/Users/chenyuanpeng/Desktop/SSDT/SSDT-3.aml", "SSDT", 1, "HASEE ", "PARADISE", 0x00001000)
{
    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E"))
            Name (_CID, EisaId ("PNP0C02"))
            Name (IVER, 0x00030000)
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }

            Name (TSDL, Package (0x04)
            {
                0x0D, 
                "Temperature 0", 
                0x0D, 
                "Temperature 1"
            })
            Name (PSDL, Package (0x06)
            {
                0x0D, 
                "Power 0", 
                0x0D, 
                "Power 1", 
                0x0D, 
                "Power 2"
            })
            Name (OSDL, Package (0x06)
            {
                0x04, 
                "Fan RPM", 
                "RPM", 
                0x0C, 
                "Battery Capacity", 
                "mAh"
            })
            Method (TSDD, 0, NotSerialized)
            {
                Name (TMPV, Package (0x02)
                {
                    0xFF, 
                    0xFF
                })
                Name (TMPC, Zero)
                Store (TMPC, Index (TMPV, Zero))
                Store (TMPC, Index (TMPV, One))
                Return (TMPV)
            }

            Method (PSDD, 0, NotSerialized)
            {
                Name (PWRV, Package (0x03)
                {
                    0xFF, 
                    0xFF, 
                    0xFF
                })
                Return (PWRV)
            }

            Method (OSDD, 0, NotSerialized)
            {
                Name (OSDV, Package (0x02)
                {
                    0xFF, 
                    0xFF
                })
                Return (OSDV)
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x18, 
                0x60, 
                0x61, 
                0x62, 
                0x63, 
                0x64, 
                0x65
            })
            Method (PADT, 0, NotSerialized)
            {
                Return (PADD)
            }

            Method (RPMD, 0, NotSerialized)
            {
                Name (MTMP, Buffer (0x1A) {})
                Return (MTMP)
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Return (Ones)
                }

                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                Return (Local0)
            }
        }
    }
}

