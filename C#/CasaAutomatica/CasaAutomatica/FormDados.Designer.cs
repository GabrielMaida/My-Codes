namespace CasaAutomatica
{
    partial class FormDados
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.grdData = new System.Windows.Forms.DataGridView();
            this.grdDataDif = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lbCusto = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lbConsumoHr = new System.Windows.Forms.Label();
            this.customInstaller1 = new MySql.Data.MySqlClient.CustomInstaller();
            this.customInstaller2 = new MySql.Data.MySqlClient.CustomInstaller();
            this.customInstaller3 = new MySql.Data.MySqlClient.CustomInstaller();
            this.customInstaller4 = new MySql.Data.MySqlClient.CustomInstaller();
            this.label1 = new System.Windows.Forms.Label();
            this.cbDispositivo = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.grdData)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grdDataDif)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // grdData
            // 
            this.grdData.AllowUserToAddRows = false;
            this.grdData.AllowUserToDeleteRows = false;
            this.grdData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdData.Location = new System.Drawing.Point(12, 39);
            this.grdData.Name = "grdData";
            this.grdData.ReadOnly = true;
            this.grdData.Size = new System.Drawing.Size(453, 271);
            this.grdData.TabIndex = 0;
            this.grdData.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // grdDataDif
            // 
            this.grdDataDif.AllowUserToAddRows = false;
            this.grdDataDif.AllowUserToDeleteRows = false;
            this.grdDataDif.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdDataDif.Location = new System.Drawing.Point(482, 39);
            this.grdDataDif.Name = "grdDataDif";
            this.grdDataDif.ReadOnly = true;
            this.grdDataDif.Size = new System.Drawing.Size(306, 183);
            this.grdDataDif.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.lbCusto);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.lbConsumoHr);
            this.panel1.Location = new System.Drawing.Point(482, 242);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 100);
            this.panel1.TabIndex = 2;
            // 
            // lbCusto
            // 
            this.lbCusto.AutoSize = true;
            this.lbCusto.Location = new System.Drawing.Point(18, 37);
            this.lbCusto.Name = "lbCusto";
            this.lbCusto.Size = new System.Drawing.Size(42, 13);
            this.lbCusto.TabIndex = 4;
            this.lbCusto.Text = "lbCusto";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 65);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "label4";
            // 
            // lbConsumoHr
            // 
            this.lbConsumoHr.AutoSize = true;
            this.lbConsumoHr.Location = new System.Drawing.Point(18, 15);
            this.lbConsumoHr.Name = "lbConsumoHr";
            this.lbConsumoHr.Size = new System.Drawing.Size(70, 13);
            this.lbConsumoHr.TabIndex = 1;
            this.lbConsumoHr.Text = "lbConsumoHr";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "label1";
            // 
            // cbDispositivo
            // 
            this.cbDispositivo.FormattingEnabled = true;
            this.cbDispositivo.Location = new System.Drawing.Point(120, 9);
            this.cbDispositivo.Name = "cbDispositivo";
            this.cbDispositivo.Size = new System.Drawing.Size(121, 21);
            this.cbDispositivo.TabIndex = 3;
            // 
            // FormDados
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cbDispositivo);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.grdDataDif);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.grdData);
            this.Name = "FormDados";
            this.Text = "FormDados";
            this.Load += new System.EventHandler(this.FormDados_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdData)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grdDataDif)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView grdData;
        private System.Windows.Forms.DataGridView grdDataDif;
        private System.Windows.Forms.Panel panel1;
        private MySql.Data.MySqlClient.CustomInstaller customInstaller1;
        private MySql.Data.MySqlClient.CustomInstaller customInstaller2;
        private MySql.Data.MySqlClient.CustomInstaller customInstaller3;
        private MySql.Data.MySqlClient.CustomInstaller customInstaller4;
        private System.Windows.Forms.Label lbConsumoHr;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbDispositivo;
        private System.Windows.Forms.Label lbCusto;
        private System.Windows.Forms.Label label4;
    }
}