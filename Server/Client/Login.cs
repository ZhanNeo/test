using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net.Sockets;
using System.Net;
using System.IO;
using System.Threading;

namespace Client
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
            IPHostEntry ipe = Dns.GetHostEntry(Dns.GetHostName());
            IPAddress ipa = null;
            foreach (IPAddress ip in ipe.AddressList)
            {
                if (ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetworkV6)
                    continue;
                ipa = ip;
                break;
            }
            this.Text = ipa.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string username = textBox1.Text;
            int port =12345;//使用12345作为监听端口
            UdpClient client = new UdpClient(new IPEndPoint(IPAddress.Any, 0));
            IPEndPoint endpoint = new IPEndPoint(IPAddress.Parse("255.255.255.255"), port);//使用广播，告诉对方自己登陆信息
            IPHostEntry ipe = Dns.GetHostEntry(Dns.GetHostName());
            IPAddress ipa = null;
            foreach (IPAddress ip in ipe.AddressList)
            {
                if (ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetworkV6)
                    continue;
                ipa = ip;
                break;
            }
            string ip1 = ipa.ToString();
            string users = username + ";" + ip1 + ":" + port.ToString();
            byte[] buf = Encoding.Default.GetBytes("login:" + username + ";" + ip1);//登陆信息格式，login命令+用户名+自己的IP
            client.Send(buf, buf.Length, endpoint);  // 发送登陆消息到自己的广       

            Member main = new Member();
            main.Username = username;
            main.Users = users;
            main.Port = port;
            main.ThisIP = ip1;
            this.Hide();
            main.ShowDialog();

        }
        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
