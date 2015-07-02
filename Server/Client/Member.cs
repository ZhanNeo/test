using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net.Sockets;
using System.IO;
using System.Threading;
using System.Net;

namespace Client
{
    public partial class Member : Form
    {
        public string Username { get; set; }
        public string Users { get; set; }
        public int Port { get; set; }
        public string ThisIP { get; set; }
        public static List<Chat> TalkList = new List<Chat>();
        public List<User> userList = new List<User>();
        public Member()
        {
            InitializeComponent();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            UdpClient client = new UdpClient(new IPEndPoint(IPAddress.Any, 0));
            IPEndPoint endpoint = new IPEndPoint(IPAddress.Parse("255.255.255.255"), 12345);
            byte[] b = System.Text.Encoding.UTF8.GetBytes("login:" + Username + ";" + ThisIP);
            client.Send(b, b.Length, endpoint);
            this.timer1.Enabled = true;
            
        }

        private void Main_Load(object sender, EventArgs e)
        {
            this.Text = Username;
            userList.Add(new User() { UserName = Username, Ips = ThisIP + ":" + Port, Online = true });
            StartListen();
        }
        private bool Contain(string name)
        {
            foreach (User s in userList)
            {
                if (s.UserName == name)
                {
                    return true;
                }
            }
            return false;
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void Main_FormClosed(object sender, FormClosedEventArgs e)
        {
            try
            {
                UdpClient client = new UdpClient(new IPEndPoint(IPAddress.Any, 0));
                IPEndPoint endpoint = new IPEndPoint(IPAddress.Parse("255.255.255.255"), 12345);
                byte[] buf = Encoding.Default.GetBytes("out:" + Username);
                client.Send(buf, buf.Length, endpoint);               
                iswork = false;
            }
            catch
            { }
            Application.Exit();
        }

        private void listView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (this.listView1.SelectedItems.Count > 0)
            {
                ListViewItem lvitem = this.listView1.SelectedItems[0];
                string toname = lvitem.Text;
                string toips = lvitem.Tag.ToString();
                Chat t = isHaveTalk(toname);
                if (t != null)
                {
                    t.Focus();
                }
                else
                {
                    Chat talk = new Chat();
                    talk.UserName = Username;
                    talk.ToName = toname;
                    talk.ToIP = toips;
                    TalkList.Add(talk);
                    talk.Show();
                }
            }
        }

        private Chat isHaveTalk(string toname)
        {
            foreach (Chat tk in TalkList)
            {
                if (tk.ToName == toname)
                    return tk;
            }
            return null;
        }

        public static void RemoveTalking(Chat _talk)
        {
            foreach (Chat tk in TalkList)
            {
                if (tk.ToName == _talk.ToName)
                {
                    TalkList.Remove(_talk);
                    return;
                }
            }
        }

        bool iswork = false;
        UdpClient uc = null;
        private void StartListen()
        {
            iswork = true;
            Thread th = new Thread(new ThreadStart(listen));
            th.IsBackground = true;
            th.Start();
        }
        private void loadUser()
        {
            this.listView1.Clear();
            for (int i = 0; i < userList.Count; i++)
            {
                if (userList[i].Online == true &&!( userList[i].UserName.Equals(Username)))
                {
                    ListViewItem lvitem = new ListViewItem();
                    lvitem.ImageIndex = 0;
                    lvitem.Text = userList[i].UserName;
                    lvitem.Tag = userList[i].Ips;
                    this.listView1.Items.Add(lvitem);
                }
                else if(!( userList[i].UserName.Equals(Username)))
                {
                    userList.Remove(userList[i]);
                }
                
            }
        }
        private void listen()
        {
            uc = new UdpClient(Port);
            IPEndPoint iep = new IPEndPoint(IPAddress.Any, Port);
            try
            {
                while (iswork)
                {
                    string text = System.Text.Encoding.UTF8.GetString(uc.Receive(ref iep));
                    if (text.StartsWith("message:"))
                    {
                        text = text.Substring(8);
                        int indexof = text.IndexOf(";");
                        string fromuser = text.Substring(0, indexof);
                        string message = text.Substring(indexof + 1);
                        Chat _tk = isHaveTalk(fromuser);
                        if (_tk != null)
                        {
                            this.BeginInvoke(new MethodInvoker(delegate()
                            {
                                _tk.Focus();
                                _tk.AddMessage(message, true);
                            }));
                        }
                        else
                        {

                            this.BeginInvoke(new MethodInvoker(delegate()
                            {
                                this.CreatTalking(text);
                            }));
                        }
                    }
                    else if (text.StartsWith("login:"))
                    {
                        text = text.Substring(6);
                        string[] _userstrindex = text.Split(';');
                        CheckForIllegalCrossThreadCalls = false;
                        if (_userstrindex[0].Equals(Username) && (!_userstrindex[1].Equals(ThisIP)))
                            {
                                this.timer1.Enabled = false;
                                UdpClient uc1 = new UdpClient();
                                byte[] b = Encoding.Default.GetBytes("error");
                                uc.Send(b, b.Length, _userstrindex[1], int.Parse("12345"));                      
                            }
                            else if (!Contain(_userstrindex[0]))
                            {
                                ListViewItem lvitem = new ListViewItem();
                                lvitem.ImageIndex = 0;
                                lvitem.Text = _userstrindex[0];
                                lvitem.Tag = _userstrindex[1]+":"+"12345";
                                this.listView1.Items.Add(lvitem);
                                userList.Add(new User() { UserName = _userstrindex[0], Ips = _userstrindex[1] + ":" + "12345", Online = true });
                            }
                            else
                            {
                                for(int i=0;i<userList.Count;i++)
                                {
                                    if (userList[i].UserName == _userstrindex[0])
                                    {
                                        userList[i].Online = true;
                                    }
                                }
                                loadUser();
                            }
                    }
                    else if (text.StartsWith("out:"))
                    {
                        text = text.Substring(4);
                        for (int i = 0; i < listView1.Items.Count; i++)
                        {
                            ListViewItem item = listView1.Items[i];
                            if (item.Text == text)
                            {
                                this.listView1.Items.Remove(listView1.Items[i]);
                                userList.RemoveAt(i + 1);
                            }
                        }
                    }
                    else if (text.StartsWith("error"))
                    {
                        iswork = false;
                        this.Enabled = false;
                        if (MessageBox.Show("用户名冲突", "提示", MessageBoxButtons.OK) == DialogResult.OK)
                        {
                            this.Close();
                        }
                        
                    }
                }
            }  
            catch (Exception ex) { throw new Exception(ex.Message); }
        }

        public void CreatTalking(object _text)
        {
            string text = _text.ToString();
            int indexof = text.IndexOf(";");
            string fromuser = text.Substring(0, indexof);
            string message = text.Substring(indexof + 1);
            Chat talk = new Chat(message);
            talk.UserName = Username;
            talk.ToName = fromuser;
            talk.ToIP = GetIP(fromuser);
            TalkList.Add(talk);
            talk.Show();
        }
        private string GetIP(string toname)
        {
            foreach (User user in userList)
            {
                if (user.UserName == toname)
                    return user.Ips;
            }
            return "";
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            UdpClient client = new UdpClient(new IPEndPoint(IPAddress.Any, 0));
            IPEndPoint endpoint = new IPEndPoint(IPAddress.Parse("255.255.255.255"), 12345);
            byte[] b = System.Text.Encoding.UTF8.GetBytes("login:" + Username + ";" + ThisIP);
            client.Send(b, b.Length, endpoint);
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            if (timer1.Enabled == false)
            {
                timer1.Enabled = true;
            }
        }

        private void timer3_Tick(object sender, EventArgs e)
        {
            for(int i=1;i<userList.Count;i++)
            {
                userList[i].Online = false;
            }
        }
    }
    public class User
    {
        private string userName;
        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        private string ips;
        public string Ips
        {
            get { return ips; }
            set { ips = value; }
        }

        private bool online;
        public bool Online
        {
            get { return online; }
            set { online = value; }
        }
    }
}
