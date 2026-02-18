using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Windows.Forms;

namespace RandomImageApp
{
    public partial class Form1 : Form
    {
        Random random = new Random();

        string[] images;

        public Form1()
        {
            InitializeComponent();

            string folderPath = Path.Combine(Application.StartupPath, "Images");

            if (Directory.Exists(folderPath))
            {
                images = Directory.GetFiles(folderPath);
            }
            else
            {
                MessageBox.Show("Папка Images не найдена!");
                images = new string[0];
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void buttonRandom_Click(object sender, EventArgs e)
        {
            if (images.Length == 0)
            {
                MessageBox.Show("Нет картинок!");
                return;
            }

            int index = random.Next(images.Length);
            pictureBox1.ImageLocation = images[index];
        }
    }
}
