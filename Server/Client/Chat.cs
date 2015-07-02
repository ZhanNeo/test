using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net.Sockets;
using System.Threading;
using System.IO;

namespace Client
{
    public partial class Chat : Form
    {
        public string UserName { get; set; }
        public string ToName { get; set; }
        public string ToIP { get; set; }
        UdpClient uc;
        public Chat()
        {
            InitializeComponent();
        }
        string getmessage = string.Empty;
        public Chat(string message)
        {
            getmessage = message;
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            string temp = this.textBox1.Text; 
            byte[] b = System.Text.Encoding.UTF8.GetBytes("message:" + UserName + ";" + temp);
            string[] _ip = ToIP.Split(':');          
            uc.Send(b, b.Length, _ip[0], int.Parse(_ip[1]));
            AddMessage(temp, false);
            this.textBox1.Clear();
        }
        public void AddMessage(string str, bool isuser)
        {
            int startindex = this.richTextBox1.Text.Length;

            string message = string.Empty;

            if (isuser)
                message = "【" + ToName + "】  " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\n" + str + "\n";
            else
                message = "【" + UserName + "】  " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\n" + str + "\n";
            this.richTextBox1.AppendText(message);
            this.richTextBox1.Select(startindex, message.Length);
            if (isuser)
            {
                this.richTextBox1.SelectionAlignment = HorizontalAlignment.Left;
            }
            else
            {
                this.richTextBox1.SelectionAlignment = HorizontalAlignment.Right;
            }
            this.richTextBox1.Select(this.richTextBox1.Text.Length, 0);
        }
        private void Talking_Load(object sender, EventArgs e)
        {
            uc = new UdpClient();
            this.Text = "和" + ToName + "聊天中";
            if (!string.IsNullOrEmpty(getmessage))
            {
                ShowTalking();
                AddMessage(getmessage, true);
            }
        }
        [System.Runtime.InteropServices.DllImport("user32")]
        private static extern long FlashWindow(IntPtr hwnd, bool bInvert);

        private static void FlashWindow(object _handle)
        {
            IntPtr handle = (IntPtr)_handle;
            int flashindex = 0;
            while (true)
            {
                if (flashindex > 5)
                    break;
                FlashWindow(handle, true);
                flashindex++;
                Thread.Sleep(500);
            }
        }

        public void ShowTalking()
        {
            Thread _thread = new Thread(FlashWindow);
            _thread.IsBackground = true;
            _thread.Start(this.Handle);
        }
        private void Talking_FormClosed(object sender, FormClosedEventArgs e)
        {
            Member.RemoveTalking(this);
        }
        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
