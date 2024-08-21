using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CasaAutomatica
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            serialPort1.PortName = "COM3";
            serialPort1.BaudRate = 9600;
        }

        private void EnviaDadosArduino(string instrucaoArduino, string texto)
        {
            if (cbArduino.Checked)
            {
                serialPort1.Open();
                if (serialPort1.IsOpen)
                {
                    serialPort1.WriteLine(instrucaoArduino);
                    serialPort1.Close();
                    textBox1.Text += texto + "\r\n";
                }
            }
            else
            {
                textBox1.Text += texto + "\r\n";
            }
        }

        private void LP01_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP011", "Acender Sala");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP01";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void LP01_OFF_Click(object sender, EventArgs e)
        {

            EnviaDadosArduino("LP010", "Apagar Sala");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP01";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();

        }

        // Sem uso
        private void button1_Click(object sender, EventArgs e)
        {
            //serialPort1.Open();
            //if (serialPort1.IsOpen)
            //{
            //    serialPort1.WriteLine("1");
            //    serialPort1.Close();
            //    textBox1.Text += "Acender Sala\r\n";

            //}

            //serialPort1.Close();
            //if (serialPort1.IsOpen)
            //{
            //    serialPort1.WriteLine("0");
            //}
            //    serialPort1.Close();
            //textBox1.Text += "Apagar Sala\r\n";


        }

        private void LP02_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP021", "Acender Espaço Gourmet");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP02";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }
        private void LP02_OFF_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP020", "Apagar Espaço Gourmet");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP02";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();

        }

        private void LP03_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP031", "Acender Suite");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP03";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void LP03_OFF_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP030", "Apagar Suite");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP03";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void LP04_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP041", "Acender Dormitorio 1");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP04";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void LP04_OFF_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP040", "Apagar Dormitorio 1");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP04";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void LP05_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP051", "Acender Dormitorio 2");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP05";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP050", "Apagar Dormitorio 2");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP05";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void LP06_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP061", "Acender Garagem");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP06";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void LP06_OFF_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP060", "Apagar Garagem");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP06";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void LP07_ON_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP071", "Acender Piscina");

            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP07";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void LP07_OFF_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("LP070", "Apagar Piscina");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "LP07";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void G01_OPEN_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("G011", "Abrir Garagem");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "G01";
            objAuto.dtLigar = DateTime.Now;
            objAuto.RegistrarAcender();
        }

        private void G01_CLOSE_Click(object sender, EventArgs e)
        {
            EnviaDadosArduino("G010", "Fechar Garagem");
            Automacao objAuto = new Automacao();
            objAuto.cdAutomacao = "G01";
            objAuto.dtDesligar = DateTime.Now;
            objAuto.RegistrarApagar();
        }

        private void toolStripContainer1_ContentPanel_Load(object sender, EventArgs e)
        {

        }

        private void btVerificar_Click(object sender, EventArgs e)
        {
            FormDados ObjetoFormUsuario = new FormDados();
            ObjetoFormUsuario.Show();
        }
    }
}
