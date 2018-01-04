using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using BO2_RTM.Properties;
using System.IO;
using System.Threading;

namespace BO2_RTM
{
    public partial class EBOOTBuilder : Form
    {
        public EBOOTBuilder()
        {
            InitializeComponent();
        }

        RTM RTM = new RTM();

        public void make_fself()
        {
            ProcessStartInfo cmdsi = new ProcessStartInfo("cmd.exe");
            cmdsi.Arguments = "/C make_fself EBOOT.ELF EBOOT.BIN";
            Process cmd = Process.Start(cmdsi);
            cmd.WaitForExit(); //wait indefinitely for the associated process to exit.
        }

        private void TabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(TabControl.SelectedIndex == 1)
            {
                Size = new Size(249, 374);
                TabControl.Size = new Size(249, 325);
            }
            else
            {
                Size = new Size(249, 608);
                TabControl.Size = new Size(249, 559);
            }
        }

        private void CancelZM_Click(object sender, EventArgs e)
        {
            Close();
            RTM.Show();
        }

        private void BuildZM_Click(object sender, EventArgs e)
        {
            string opath = new Uri(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase)).LocalPath;
            string path = opath + "\\EBOOT.ELF";
            string fselfpath = opath +"\\make_fself.exe";
            File.WriteAllBytes(fselfpath, Resources.make_fself);
            File.WriteAllBytes(path, Resources.EBOOT);
            StreamWriter sw = new StreamWriter(File.Open(path, FileMode.Open));
            string sprx = "";
            if (SPRXCheckBoxZM.Checked)
            {
                sw.BaseStream.Position = 0xAE2573;
                if (SPRXTextBoxZM.Text.Contains(".sprx"))
                {
                    sw.Write(SPRXTextBoxZM.Text);
                    sprx = "\nLoads dev_hdd0/tmp/" + SPRXTextBoxZM.Text;
                }
                else
                {
                    sw.Write(SPRXTextBoxZM.Text + ".sprx");
                    sprx = "\nLoads dev_hdd0/tmp/" + SPRXTextBoxZM.Text + ".sprx";
                }
            }
            sw.Close();
            BinaryWriter bw = new BinaryWriter(File.Open(path, FileMode.Open));
            bw.BaseStream.Position = 0x4525F0;
            bw.Write(new byte[] { 0x40 });
            string antiban = "";
            if (AntiBanZM.Checked)
            {
                bw.BaseStream.Position = 0x4FA38F;
                bw.Write(new byte[] { 0x99 });
                bw.BaseStream.Position = 0x4FBA74;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x537DD4;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x538148;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x4FB61C;
                bw.Write(new byte[] { 0x48, 0x00 });
                bw.BaseStream.Position = 0x4FA3BC;
                bw.Write(new byte[] { 0x48, 0x00 });
                bw.BaseStream.Position = 0x5200E8;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x5200F4;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                antiban = "\nAntiBan";
            }
            string fps = "";
            if (FPSZM.Checked)
            {
                bw.BaseStream.Position = 0x27FEC;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                fps = "\nFPS";
            }
            string norecoil = "";
            if (NoRecoilZM.Checked)
            {
                bw.BaseStream.Position = 0xE9E54;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                norecoil = "\nNo Recoil";
            }
            string steadyaim = "";
            if (SteadyAimZM.Checked)
            {
                bw.BaseStream.Position = 0x5E0A20;
                bw.Write(new byte[] { 0x2C, 0x04, 0x00, 0x00 });
                steadyaim = "\n+ Crosshair";
            }
            string laser = "";
            if (LaserZM.Checked)
            {
                bw.BaseStream.Position = 0xDF68C;
                bw.Write(new byte[] { 0x2C, 0x03, 0x00, 0x01 });
                laser = "\nLaser";
            }
            bw.Close();
            make_fself();
            File.Delete(path);
            File.Delete(fselfpath);
            Close();
            RTM.Show();
            MessageBox.Show("Zombies Debug EBOOT created in current directory" + sprx + antiban + fps + norecoil + steadyaim + laser, "Success", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            Process.Start(opath);
        }
        //AE2573

        private void Build_Click(object sender, EventArgs e)
        {
            string opath = new Uri(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase)).LocalPath;
            string path = opath +"\\EBOOT.ELF";
            string fselfpath = opath + "\\make_fself.exe";
            File.WriteAllBytes(fselfpath, Resources.make_fself);
            string b777x = "";
            if (B777x.Checked)
            {
                File.WriteAllBytes(path, Resources.B777xEBOOT);
                b777x = "\nAimbot\nAnti Freeze Lobby\nGhost/AW Camo";
            }
            else
                File.WriteAllBytes(path, Resources.EBOOT);
            StreamWriter sw = new StreamWriter(File.Open(path, FileMode.Open));
            string sprx = "";
            if (SPRXCheckBox.Checked)
            {
                sw.BaseStream.Position = 0xAE2573;
                if (SPRXTextBox.Text.Contains(".sprx"))
                {
                    sw.Write(SPRXTextBox.Text);
                    sprx = "\nLoads dev_hdd0/tmp/" + SPRXTextBox.Text;
                }
                else
                {
                    sw.Write(SPRXTextBox.Text + ".sprx");
                    sprx = "\nLoads dev_hdd0/tmp/" + SPRXTextBox.Text + ".sprx";
                }
            }
            sw.Close();
            BinaryWriter bw = new BinaryWriter(File.Open(path, FileMode.Open));
            bw.BaseStream.Position = 0x4525F0;
            bw.Write(new byte[] { 0x41 });
            string antiban = "";
            if (AntiBan.Checked)
            {
                bw.BaseStream.Position = 0x4FA38F;
                bw.Write(new byte[] { 0x99 });
                bw.BaseStream.Position = 0x4FBA74;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x537DD4;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x538148;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x4FB61C;
                bw.Write(new byte[] { 0x48, 0x00 });
                bw.BaseStream.Position = 0x4FA3BC;
                bw.Write(new byte[] { 0x48, 0x00 });
                bw.BaseStream.Position = 0x5200E8;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                bw.BaseStream.Position = 0x5200F4;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                antiban = "\nAntiban";
            }
            string fps = "";
            if (FPS.Checked)
            {
                bw.BaseStream.Position = 0x27FEC;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                fps = "\nFPS";
            }
            string norecoil = "";
            if (NoRecoil.Checked)
            {
                bw.BaseStream.Position = 0xE9E54;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                norecoil = "\nNo Recoil";
            }
            string steadyaim = "";
            if (SteadyAim.Checked)
            {
                bw.BaseStream.Position = 0x5E0A20;
                bw.Write(new byte[] { 0x2C, 0x04, 0x00, 0x00 });
                steadyaim = "\n+ Crosshair";
            }
            string laser = "";
            if (Laser.Checked)
            {
                bw.BaseStream.Position = 0xDF68C;
                bw.Write(new byte[] { 0x2C, 0x03, 0x00, 0x01 });
                laser = "\nLaser";
            }
            string probation = "";
            if (Probation.Checked)
            {
                bw.BaseStream.Position = 0x52FC6C;
                bw.Write(new byte[] { 0x41, 0x80 });
                probation = "\nProbation Bypass";
            }
            string vsat = "";
            if (VSAT.Checked)
            {
                bw.BaseStream.Position = 0x23C60;
                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
                vsat = "\nVSAT";
            }
            string redboxes = "";
            if (RedBoxes.Checked)
            {
                bw.BaseStream.Position = 0x683E0;
                bw.Write(new byte[] { 0x38, 0x60, 0x00, 0x01 });
                redboxes = "\nRed Boxes";
            }
            string wallhack = "";
            if (WallHack.Checked)
            {
                bw.BaseStream.Position = 0x734D0;
                bw.Write(new byte[] { 0x38, 0xC0, 0xFF, 0xFF });
                wallhack = "\nWallhack";
            }
            string uav = "";
            if (UAV.Checked)
            {
                bw.BaseStream.Position = 0x23CB4;
                bw.Write(new byte[] { 0x2C, 0x03, 0x00, 0x01 });
                uav = "\nUAV";
            }
            bw.Close();
            make_fself();
            File.Delete(path);
            File.Delete(fselfpath);
            Close();
            RTM.Show();
            MessageBox.Show("Multiplayer Debug EBOOT created in current directory" + sprx + b777x + antiban + probation + fps + norecoil + steadyaim + laser + vsat + redboxes + wallhack + uav, "Success", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            Process.Start(opath);
        }

        private void Cancel_Click(object sender, EventArgs e)
        {
            Close();
            RTM.Show();
        }
    }
}
//                bw.BaseStream.Position = 0x35E96C;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x35E9A0;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x35EA64;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x381154;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x35E9E4;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x351B74;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x351B4C;
//                bw.Write(new byte[] { 0x60, 0x00, 0x00, 0x00 });
//                bw.BaseStream.Position = 0x351B58;
//                bw.Write(new byte[] { 0x48, 0x00, 0x00, 0x04 });