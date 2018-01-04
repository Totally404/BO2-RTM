using PS3Lib;
using System;
using System.Threading;
using System.Windows.Forms;
using System.IO;


namespace BO2_RTM
{
    internal class RPC
    {
        private static uint function_address = 0x7AA050;//0x42FC8;//0x7aa050;
        public static PS3API PS3 = new PS3API();

        public static int Call(uint func_address, params object[] parameters)
        {
            int length = parameters.Length;
            int index = 0;
            uint num3 = 0;
            uint num4 = 0;
            uint num5 = 0;
            uint num6 = 0;
            while (index < length)
            {
                if (parameters[index] is int)
                {
                    PS3.Extension.WriteInt32(0x10020000 + (num3 * 4), (int)parameters[index]);

                    num3++;
                }
                else if (parameters[index] is uint)
                {
                    PS3.Extension.WriteUInt32(0x10020000 + (num3 * 4), (uint)parameters[index]);

                    num3++;
                }
                else
                {
                    uint num7;
                    if (parameters[index] is string)
                    {
                        num7 = 0x10022000 + (num4 * 0x400);
                        PS3.Extension.WriteString(num7, Convert.ToString(parameters[index]));

                        PS3.Extension.WriteUInt32(0x10020000 + (num3 * 4), num7);

                        num3++;
                        num4++;
                    }
                    else if (parameters[index] is float)
                    {
                        PS3.Extension.WriteFloat(0x10020024 + (num5 * 4), (float)parameters[index]);

                        num5++;
                    }
                    else if (parameters[index] is float[])
                    {
                        float[] input = (float[])parameters[index];
                        num7 = 0x10021000 + (num6 * 4);
                        WriteSingle(num7, input);
                        PS3.Extension.WriteUInt32(0x10020000 + (num3 * 4), num7);

                        num3++;
                        num6 += (uint)input.Length;
                    }
                }
                index++;
            }

            PS3.Extension.WriteUInt32(0x1002004c, func_address);
            Thread.Sleep(20);
            return PS3.Extension.ReadInt32(0x10020050);
        }

        public static void WriteSingle(uint address, float[] input)
        {
            int length = input.Length;
            byte[] array = new byte[length * 4];
            for (int i = 0; i < length; i++)
            {
                ReverseBytes(BitConverter.GetBytes(input[i])).CopyTo(array, (int)(i * 4));
            }
            PS3.SetMemory(address, array);
        }

        public static byte[] ReverseBytes(byte[] inArray)
        {
            Array.Reverse(inArray);
            return inArray;
        }

        public static int Init()
        {
            function_address = 0x7AA050;//0x42FC8;//0x7AA050;
            Enable();
            //PS3.SetMemory(0x7AA050, new byte[] { 0xF8, 0x21, 0xFF, 0x41, 0x7C, 0x08, 0x02, 0xA6, 0xF8, 0x01, 0x00, 0xD0, 0xDB, 0x21, 0x00, 0x88, 0xDB, 0x41, 0x00, 0x90, 0xDB, 0x61, 0x00, 0x98, 0xDB, 0x81, 0x00, 0xA0, 0xDB, 0xA1, 0x00, 0xA8, 0xDB, 0xC1, 0x00, 0xB0, 0xDB, 0xE1, 0x00, 0xB8, 0xFB, 0xC1, 0x00, 0x78, 0x60, 0x7E, 0x00, 0x00, 0x3C, 0x60, 0x00, 0x10, 0x30, 0xDE, 0x03, 0x40, 0x60, 0x63, 0x42, 0x70, 0x3D, 0x20, 0x00, 0x7B, 0xFB, 0xE1, 0x00, 0x80, 0x80, 0xBE, 0x0F, 0xB0, 0x60, 0x9F, 0x00, 0x00, 0xFB, 0xA1, 0x00, 0x70, 0x30, 0x9E, 0x03, 0x30, 0x7F, 0xA5, 0x18, 0x14, 0x78, 0xC3, 0x00, 0x20, 0x7B, 0xBD, 0x00, 0x20, 0x30, 0xE3, 0x00, 0x04, 0x30, 0xDD, 0x00, 0x28, 0x31, 0x1D, 0x00, 0x2C, 0x78, 0xC6, 0x00, 0x20, 0x79, 0x08, 0x00, 0x20, 0x78, 0xE7, 0x00, 0x20, 0x30, 0xBD, 0x00, 0x30, 0x31, 0x5D, 0x00, 0x38, 0xC0, 0x26, 0x00, 0x00, 0x78, 0xA5, 0x00, 0x20, 0x38, 0xC9, 0xA0, 0x38, 0xD0, 0x23, 0x00, 0x00, 0x31, 0x23, 0x00, 0x08, 0xC0, 0x28, 0x00, 0x00, 0x31, 0x1D, 0x00, 0x34, 0x79, 0x29, 0x00, 0x20, 0xD0, 0x27, 0x00, 0x00, 0x30, 0x63, 0x00, 0x0C });
            return 0;
        }
        public static void iPrintln(int client, string txt)
        {
            SV_GameSendServerCommand(client, "O \"" + txt + "\"");
        }

        public static void iPrintlnBold(int client, string txt)
        {
            SV_GameSendServerCommand(client, "< \"" + txt + "\"");
        }
        public static void Enable()
        {
            if (PS3.GetBytes(function_address, 4) == new byte[] { 0xf8, 0x21, 0xff, 0x91 })
            {
                MessageBox.Show("Already Enabled");
            }
            else
            {
                PS3.SetMemory(function_address, new byte[] { 0x4e, 0x80, 0, 0x20 });
                Thread.Sleep(20);
                byte[] buffer = new byte[] {
                0x7c, 8, 2, 0xa6, 0xf8, 1, 0, 0x80, 60, 0x60, 0x10, 2, 0x81, 0x83, 0, 0x4c,
                0x2c, 12, 0, 0, 0x41, 130, 0, 100, 0x80, 0x83, 0, 4, 0x80, 0xa3, 0, 8,
                0x80, 0xc3, 0, 12, 0x80, 0xe3, 0, 0x10, 0x81, 3, 0, 20, 0x81, 0x23, 0, 0x18,
                0x81, 0x43, 0, 0x1c, 0x81, 0x63, 0, 0x20, 0xc0, 0x23, 0, 0x24, 0xc0, 0x43, 0, 40,
                0xc0, 0x63, 0, 0x2c, 0xc0, 0x83, 0, 0x30, 0xc0, 0xa3, 0, 0x34, 0xc0, 0xc3, 0, 0x38,
                0xc0, 0xe3, 0, 60, 0xc1, 3, 0, 0x40, 0xc1, 0x23, 0, 0x48, 0x80, 0x63, 0, 0,
                0x7d, 0x89, 3, 0xa6, 0x4e, 0x80, 4, 0x21, 60, 0x80, 0x10, 2, 0x38, 160, 0, 0,
                0x90, 0xa4, 0, 0x4c, 0x90, 100, 0, 80, 0xe8, 1, 0, 0x80, 0x7c, 8, 3, 0xa6,
                0x38, 0x21, 0, 0x70, 0x4e, 0x80, 0, 0x20
             };
                PS3.SetMemory(function_address + 4, buffer);
                PS3.SetMemory(0x10020000, new byte[0x2854]);
                PS3.SetMemory(function_address, new byte[] { 0xf8, 0x21, 0xff, 0x91 });
            }
        }

        public static void SV_GameSendServerCommand(int client, string command)
        {
            Call(0x349f6c, new object[] { client, 0, command });
        }
        public static int Cbuf_AddText(string Command)
        {
            return RPC.Call(0x313c18, 0, Command);
        }

        public static void Vision(int client, string vision)
        {
            RPC.SV_GameSendServerCommand(client, "2 1060 \"" + vision + "\"");
        }

        void Sound(string sound)
        {
            RPC.SV_GameSendServerCommand(-1, "B " + RPC.Call(0x4f45bc, sound));
        }
    }
}
