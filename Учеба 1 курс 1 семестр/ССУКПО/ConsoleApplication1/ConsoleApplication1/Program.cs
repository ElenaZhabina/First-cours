using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace lab6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int j, k;
            StreamReader read = File.OpenText("input.txt");
            StreamWriter write = File.CreateText("output.txt");
            k = int.Parse(textBox1.Text);
            j = 1;
            while (!read.EndOfStream)
            {
                string str = read.ReadLine();
                richTextBox1.Text += str + Environment.NewLine; ;
                char[] s = str.ToCharArray();
                if (j == k)
                {
                    //  ???????????????
                    // write.WriteLine(s);
                    // richTextBox2.Text += str + Environment.NewLine;
                }
                j++;
            }
            read.Close();
            write.Close();
        }
    }
}
