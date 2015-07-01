using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Linq;

namespace uCos
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           SaveFileDialog sfd = new SaveFileDialog();
           sfd.AddExtension = true;
           sfd.DefaultExt = ".h";
           sfd.FileName = "os_cfg";
           DialogResult dr = new DialogResult();  
           dr=sfd.ShowDialog();  
           if (dr == DialogResult.OK)  
           {    
                String directory = @sfd.FileName;
                String text = textBox1.Text;
                if (File.Exists(directory)) 
                {
                    StreamWriter swWriter = new StreamWriter(directory);
                    swWriter.WriteLine(text);
                    swWriter.Flush();
                    swWriter.Close(); 
                } 
                else 
                { 
                    FileStream fs = File.Create(directory);
                    fs.Flush();
                    fs.Close();
                    StreamWriter swWriter = new StreamWriter(directory);
                    swWriter.WriteLine(text);
                    swWriter.Flush();
                    swWriter.Close(); 
                }
           }  
  
        }

        private void button3_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            if (textBox4.Text.Length!=0)
            {
                FileStream fs = new FileStream(textBox4.Text, FileMode.Open);
                StreamReader m_streamReader = new StreamReader(fs);
                m_streamReader.BaseStream.Seek(0, SeekOrigin.Begin);
                string strLine = m_streamReader.ReadLine();
                while (strLine != null)
                {
                    if (strLine.Length != 0)
                    {
                        string temp = strLine.Replace(" ", "/");
                        string[] temp1 = temp.Split('/');
                        temp1 = temp1.ToList().Where(x => !x.ToString().Equals("")).ToArray();
                        listBox1.Items.Add(temp1[1]);
                    }
                    strLine = m_streamReader.ReadLine();
                } 
                m_streamReader.Close();
                m_streamReader.Dispose();
                fs.Close();
                fs.Dispose();
            }
            else
            {
                MessageBox.Show("请输入路径");
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            textBox3.Text = listBox1.SelectedItem.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox4.Text.Length != 0)
            {
                FileStream fs = new FileStream(textBox4.Text, FileMode.Open);
                StreamReader m_streamReader = new StreamReader(fs);
                m_streamReader.BaseStream.Seek(0, SeekOrigin.Begin);
                string strLine = m_streamReader.ReadLine();
                int curLine = 1;
                bool Flag = false;
                while (strLine != null)
                {
                    string temp = strLine.Replace(" ", "/");
                    string[] temp1 = temp.Split('/');
                    temp1 = temp1.ToList().Where(x => !x.ToString().Equals("")).ToArray();
                    if (strLine.Length != 0)
                    {
                        if (temp1[1].Equals(textBox3.Text))
                        {
                            string newItem = "#define " + temp1[1] + " " + textBox2.Text;
                            m_streamReader.Close();
                            m_streamReader.Dispose();
                            fs.Close();
                            fs.Dispose();
                            EditFile(curLine, newItem, textBox4.Text);
                            Flag = true;
                            MessageBox.Show("修改成功！");
                            break;
                        }
                    }
                    strLine = m_streamReader.ReadLine();
                    curLine++;
                }

                if (!Flag)
                {
                    m_streamReader.Close();
                    m_streamReader.Dispose();
                    fs.Close();
                    fs.Dispose();
                    FileStream fs1 = new FileStream(textBox4.Text, FileMode.Open, FileAccess.Write);
                    fs1.Position = fs1.Length;
                    StreamWriter sw = new StreamWriter(fs1);
                    string temp = "#define " + textBox3.Text + " " + textBox2.Text;
                    sw.WriteLine(temp);
                    sw.Close();
                    sw.Dispose();
                    fs1.Close();
                    fs1.Dispose();
                    MessageBox.Show("修改成功！");
                }
            }
            else
            {
                MessageBox.Show("请输入路径");
            }
        }
        public static void EditFile(int curLine, string newLineValue, string patch)
        {
            FileStream fs = new FileStream(patch, FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs, Encoding.GetEncoding("utf-8"));
            string line = sr.ReadLine();
            StringBuilder sb = new StringBuilder();
            if (curLine == 1)
            {
                line = newLineValue;
                sb.Append(line + "\r\n");
            }
            else
            {
                for (int i = 1; line != null; i++)
                {
                    sb.Append(line + "\r\n");
                    if (i != curLine - 1)
                        line = sr.ReadLine();
                    else
                    {
                        sr.ReadLine();
                        line = newLineValue;
                    }
                }
            }
            sr.Close();
            fs.Close();
            FileStream fs1 = new FileStream(patch, FileMode.Open, FileAccess.Write);
            StreamWriter sw = new StreamWriter(fs1);
            sw.Write(sb.ToString());
            sw.Close();
            fs.Close();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.ShowDialog();
            String directory = @ofd.FileName;
            textBox4.Text = directory;
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (textBox5.Text.Length != 0 && textBox6.Text.Length != 0)
            {
                textBox1.Text += label6.Text + textBox5.Text + " " + textBox6.Text+"\r\n";
            }
            else
            {
                MessageBox.Show("定义名或参数不能为空");
            }
        } 
    }
}
