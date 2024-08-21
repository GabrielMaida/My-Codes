namespace CasaAutomatica
{
    partial class Form1
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.LP01_ON = new System.Windows.Forms.Button();
            this.LP01_OFF = new System.Windows.Forms.Button();
            this.cbArduino = new System.Windows.Forms.CheckBox();
            this.LP02_ON = new System.Windows.Forms.Button();
            this.LP02_OFF = new System.Windows.Forms.Button();
            this.LP03_ON = new System.Windows.Forms.Button();
            this.LP03_OFF = new System.Windows.Forms.Button();
            this.LP05_ON = new System.Windows.Forms.Button();
            this.LP05_OFF = new System.Windows.Forms.Button();
            this.LP04_ON = new System.Windows.Forms.Button();
            this.LP04_OFF = new System.Windows.Forms.Button();
            this.LP06_ON = new System.Windows.Forms.Button();
            this.LP06_OFF = new System.Windows.Forms.Button();
            this.G01_CLOSE = new System.Windows.Forms.Button();
            this.G01_OPEN = new System.Windows.Forms.Button();
            this.LP07_ON = new System.Windows.Forms.Button();
            this.LP07_OFF = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btApuracao = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(784, 40);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(223, 362);
            this.textBox1.TabIndex = 3;
            // 
            // LP01_ON
            // 
            this.LP01_ON.BackColor = System.Drawing.Color.Green;
            this.LP01_ON.Location = new System.Drawing.Point(502, 97);
            this.LP01_ON.Name = "LP01_ON";
            this.LP01_ON.Size = new System.Drawing.Size(36, 31);
            this.LP01_ON.TabIndex = 5;
            this.LP01_ON.Text = "ON";
            this.LP01_ON.UseVisualStyleBackColor = false;
            this.LP01_ON.Click += new System.EventHandler(this.LP01_ON_Click);
            // 
            // LP01_OFF
            // 
            this.LP01_OFF.BackColor = System.Drawing.Color.Red;
            this.LP01_OFF.Location = new System.Drawing.Point(544, 97);
            this.LP01_OFF.Name = "LP01_OFF";
            this.LP01_OFF.Size = new System.Drawing.Size(39, 31);
            this.LP01_OFF.TabIndex = 6;
            this.LP01_OFF.Text = "OFF";
            this.LP01_OFF.UseVisualStyleBackColor = false;
            this.LP01_OFF.Click += new System.EventHandler(this.LP01_OFF_Click);
            // 
            // cbArduino
            // 
            this.cbArduino.AutoSize = true;
            this.cbArduino.Location = new System.Drawing.Point(799, 13);
            this.cbArduino.Name = "cbArduino";
            this.cbArduino.Size = new System.Drawing.Size(113, 17);
            this.cbArduino.TabIndex = 7;
            this.cbArduino.Text = "Utilizando Arduíno";
            this.cbArduino.UseVisualStyleBackColor = true;
            // 
            // LP02_ON
            // 
            this.LP02_ON.BackColor = System.Drawing.Color.Green;
            this.LP02_ON.Location = new System.Drawing.Point(229, 209);
            this.LP02_ON.Name = "LP02_ON";
            this.LP02_ON.Size = new System.Drawing.Size(36, 31);
            this.LP02_ON.TabIndex = 8;
            this.LP02_ON.Text = "ON";
            this.LP02_ON.UseVisualStyleBackColor = false;
            this.LP02_ON.Click += new System.EventHandler(this.LP02_ON_Click);
            // 
            // LP02_OFF
            // 
            this.LP02_OFF.BackColor = System.Drawing.Color.Red;
            this.LP02_OFF.Location = new System.Drawing.Point(271, 209);
            this.LP02_OFF.Name = "LP02_OFF";
            this.LP02_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP02_OFF.TabIndex = 9;
            this.LP02_OFF.Text = "OFF";
            this.LP02_OFF.UseVisualStyleBackColor = false;
            this.LP02_OFF.Click += new System.EventHandler(this.LP02_OFF_Click);
            // 
            // LP03_ON
            // 
            this.LP03_ON.BackColor = System.Drawing.Color.Green;
            this.LP03_ON.Location = new System.Drawing.Point(80, 168);
            this.LP03_ON.Name = "LP03_ON";
            this.LP03_ON.Size = new System.Drawing.Size(36, 31);
            this.LP03_ON.TabIndex = 10;
            this.LP03_ON.Text = "ON";
            this.LP03_ON.UseVisualStyleBackColor = false;
            this.LP03_ON.Click += new System.EventHandler(this.LP03_ON_Click);
            // 
            // LP03_OFF
            // 
            this.LP03_OFF.BackColor = System.Drawing.Color.Red;
            this.LP03_OFF.Location = new System.Drawing.Point(122, 168);
            this.LP03_OFF.Name = "LP03_OFF";
            this.LP03_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP03_OFF.TabIndex = 11;
            this.LP03_OFF.Text = "OFF";
            this.LP03_OFF.UseVisualStyleBackColor = false;
            this.LP03_OFF.Click += new System.EventHandler(this.LP03_OFF_Click);
            // 
            // LP05_ON
            // 
            this.LP05_ON.BackColor = System.Drawing.Color.Green;
            this.LP05_ON.Location = new System.Drawing.Point(328, 34);
            this.LP05_ON.Name = "LP05_ON";
            this.LP05_ON.Size = new System.Drawing.Size(36, 31);
            this.LP05_ON.TabIndex = 12;
            this.LP05_ON.Text = "ON";
            this.LP05_ON.UseVisualStyleBackColor = false;
            this.LP05_ON.Click += new System.EventHandler(this.LP05_ON_Click);
            // 
            // LP05_OFF
            // 
            this.LP05_OFF.BackColor = System.Drawing.Color.Red;
            this.LP05_OFF.Location = new System.Drawing.Point(370, 34);
            this.LP05_OFF.Name = "LP05_OFF";
            this.LP05_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP05_OFF.TabIndex = 13;
            this.LP05_OFF.Text = "OFF";
            this.LP05_OFF.UseVisualStyleBackColor = false;
            this.LP05_OFF.Click += new System.EventHandler(this.button6_Click);
            // 
            // LP04_ON
            // 
            this.LP04_ON.BackColor = System.Drawing.Color.Green;
            this.LP04_ON.Location = new System.Drawing.Point(122, 34);
            this.LP04_ON.Name = "LP04_ON";
            this.LP04_ON.Size = new System.Drawing.Size(36, 31);
            this.LP04_ON.TabIndex = 14;
            this.LP04_ON.Text = "ON";
            this.LP04_ON.UseVisualStyleBackColor = false;
            this.LP04_ON.Click += new System.EventHandler(this.LP04_ON_Click);
            // 
            // LP04_OFF
            // 
            this.LP04_OFF.BackColor = System.Drawing.Color.Red;
            this.LP04_OFF.Location = new System.Drawing.Point(164, 34);
            this.LP04_OFF.Name = "LP04_OFF";
            this.LP04_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP04_OFF.TabIndex = 15;
            this.LP04_OFF.Text = "OFF";
            this.LP04_OFF.UseVisualStyleBackColor = false;
            this.LP04_OFF.Click += new System.EventHandler(this.LP04_OFF_Click);
            // 
            // LP06_ON
            // 
            this.LP06_ON.BackColor = System.Drawing.Color.Green;
            this.LP06_ON.Location = new System.Drawing.Point(460, 327);
            this.LP06_ON.Name = "LP06_ON";
            this.LP06_ON.Size = new System.Drawing.Size(36, 31);
            this.LP06_ON.TabIndex = 16;
            this.LP06_ON.Text = "ON";
            this.LP06_ON.UseVisualStyleBackColor = false;
            this.LP06_ON.Click += new System.EventHandler(this.LP06_ON_Click);
            // 
            // LP06_OFF
            // 
            this.LP06_OFF.BackColor = System.Drawing.Color.Red;
            this.LP06_OFF.Location = new System.Drawing.Point(502, 327);
            this.LP06_OFF.Name = "LP06_OFF";
            this.LP06_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP06_OFF.TabIndex = 17;
            this.LP06_OFF.Text = "OFF";
            this.LP06_OFF.UseVisualStyleBackColor = false;
            this.LP06_OFF.Click += new System.EventHandler(this.LP06_OFF_Click);
            // 
            // G01_CLOSE
            // 
            this.G01_CLOSE.BackColor = System.Drawing.Color.Red;
            this.G01_CLOSE.Location = new System.Drawing.Point(651, 355);
            this.G01_CLOSE.Name = "G01_CLOSE";
            this.G01_CLOSE.Size = new System.Drawing.Size(69, 22);
            this.G01_CLOSE.TabIndex = 18;
            this.G01_CLOSE.Text = "FECHAR";
            this.G01_CLOSE.UseVisualStyleBackColor = false;
            this.G01_CLOSE.Click += new System.EventHandler(this.G01_CLOSE_Click);
            // 
            // G01_OPEN
            // 
            this.G01_OPEN.BackColor = System.Drawing.Color.Green;
            this.G01_OPEN.Location = new System.Drawing.Point(651, 327);
            this.G01_OPEN.Name = "G01_OPEN";
            this.G01_OPEN.Size = new System.Drawing.Size(69, 22);
            this.G01_OPEN.TabIndex = 19;
            this.G01_OPEN.Text = "ABRIR";
            this.G01_OPEN.UseVisualStyleBackColor = false;
            this.G01_OPEN.Click += new System.EventHandler(this.G01_OPEN_Click);
            // 
            // LP07_ON
            // 
            this.LP07_ON.BackColor = System.Drawing.Color.Green;
            this.LP07_ON.Location = new System.Drawing.Point(39, 336);
            this.LP07_ON.Name = "LP07_ON";
            this.LP07_ON.Size = new System.Drawing.Size(36, 31);
            this.LP07_ON.TabIndex = 20;
            this.LP07_ON.Text = "ON";
            this.LP07_ON.UseVisualStyleBackColor = false;
            this.LP07_ON.Click += new System.EventHandler(this.LP07_ON_Click);
            // 
            // LP07_OFF
            // 
            this.LP07_OFF.BackColor = System.Drawing.Color.Red;
            this.LP07_OFF.Location = new System.Drawing.Point(81, 336);
            this.LP07_OFF.Name = "LP07_OFF";
            this.LP07_OFF.Size = new System.Drawing.Size(36, 31);
            this.LP07_OFF.TabIndex = 21;
            this.LP07_OFF.Text = "OFF";
            this.LP07_OFF.UseVisualStyleBackColor = false;
            this.LP07_OFF.Click += new System.EventHandler(this.LP07_OFF_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(765, 497);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // btApuracao
            // 
            this.btApuracao.Location = new System.Drawing.Point(814, 431);
            this.btApuracao.Name = "btApuracao";
            this.btApuracao.Size = new System.Drawing.Size(171, 23);
            this.btApuracao.TabIndex = 22;
            this.btApuracao.Text = "APURAÇÃO";
            this.btApuracao.UseVisualStyleBackColor = true;
            this.btApuracao.Click += new System.EventHandler(this.btVerificar_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1012, 513);
            this.Controls.Add(this.btApuracao);
            this.Controls.Add(this.LP07_OFF);
            this.Controls.Add(this.LP07_ON);
            this.Controls.Add(this.G01_OPEN);
            this.Controls.Add(this.G01_CLOSE);
            this.Controls.Add(this.LP06_OFF);
            this.Controls.Add(this.LP06_ON);
            this.Controls.Add(this.LP04_OFF);
            this.Controls.Add(this.LP04_ON);
            this.Controls.Add(this.LP05_OFF);
            this.Controls.Add(this.LP05_ON);
            this.Controls.Add(this.LP03_OFF);
            this.Controls.Add(this.LP03_ON);
            this.Controls.Add(this.LP02_OFF);
            this.Controls.Add(this.LP02_ON);
            this.Controls.Add(this.cbArduino);
            this.Controls.Add(this.LP01_OFF);
            this.Controls.Add(this.LP01_ON);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.textBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button LP01_ON;
        private System.Windows.Forms.Button LP01_OFF;
        private System.Windows.Forms.CheckBox cbArduino;
        private System.Windows.Forms.Button LP02_ON;
        private System.Windows.Forms.Button LP02_OFF;
        private System.Windows.Forms.Button LP03_ON;
        private System.Windows.Forms.Button LP03_OFF;
        private System.Windows.Forms.Button LP05_ON;
        private System.Windows.Forms.Button LP05_OFF;
        private System.Windows.Forms.Button LP04_ON;
        private System.Windows.Forms.Button LP04_OFF;
        private System.Windows.Forms.Button LP06_ON;
        private System.Windows.Forms.Button LP06_OFF;
        private System.Windows.Forms.Button G01_CLOSE;
        private System.Windows.Forms.Button G01_OPEN;
        private System.Windows.Forms.Button LP07_ON;
        private System.Windows.Forms.Button LP07_OFF;
        private System.Windows.Forms.Button btApuracao;
    }
}

