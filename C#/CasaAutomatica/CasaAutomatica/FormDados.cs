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
    public partial class FormDados : Form
    {
        public FormDados()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void FormDados_Load(object sender, EventArgs e)
        {
            Automacao objUsu = new Automacao();
            grdData.DataSource = objUsu.Listar();
            grdData.Columns["idAutomacao"].HeaderText = "id";

            Automacao objUsu2 = new Automacao();
            grdDataDif.DataSource = objUsu2.ListarResumo();
            grdDataDif.Columns["idAutomacao"].HeaderText = "id";
        }
        public void CarregarGrid()
        {
            try
            {
                Automacao objCasa = new Automacao();
                grdData.DataSource = objCasa.Listar();
                grdData.Columns["idAutomacao"].HeaderText = "id";
                grdData.Columns["idAutomacao"].Visible = false;
                grdData.Columns["idAutomacao"].HeaderText = "Elemento";
                grdData.Columns["dtLigar"].HeaderText = "Ligado/Aberto";
                grdData.Columns["dtDesligar"].HeaderText = "Desligado/Fechado";
                grdData.Columns["dtLigar"].Width = 140;
                grdData.Columns["dtDesligar"].Width = 140;

                DataTable dtResumo;
                if (cbDispositivo.Text != "TODOS")
                {
                    dtResumo = objCasa.ListarResumo(cbDispositivo.Text);
                    grdDataDif.DataSource = dtResumo;
                }
                else
                {
                    dtResumo = objCasa.ListarResumo();
                    grdDataDif.DataSource = dtResumo;
                }

                grdDataDif.Columns["cdAutomacao"].HeaderText = "Elemento";
                grdDataDif.Columns["QtMinutos"].HeaderText = "min";
                grdDataDif.Columns["cdAutomacao"].Width = 120;
                grdDataDif.Columns["QtMinutos"].Width = 140;

                int totHr = 0;

                foreach (DataRow linha in dtResumo.Rows)
                {
                    totHr += Convert.ToInt16(linha["QtMinutos"]);
                }
                lbConsumoHr.Text = "Consumo Hr : " + totHr.ToString();
                lbCusto.Text = "Custo R$ : " + (totHr * 0.4).ToString();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Falha no carregamento dos dados");
            }

        }
         private void cbDispositivo_SelectedIndexChanged(object sender, EventArgs e)
        {
            CarregarGrid();
        }
    }
}
