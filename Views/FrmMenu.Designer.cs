
namespace Views
{
    partial class FrmMenu
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
            this.barraStatusPrincipal = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.lblVersion = new System.Windows.Forms.ToolStripStatusLabel();
            this.menuPrincipal = new System.Windows.Forms.MenuStrip();
            this.btnCadastro = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCliente = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFilial = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFornecedor = new System.Windows.Forms.ToolStripMenuItem();
            this.menuPessoaFisicia = new System.Windows.Forms.ToolStripMenuItem();
            this.menuPessoaJuridica = new System.Windows.Forms.ToolStripMenuItem();
            this.menuProduto = new System.Windows.Forms.ToolStripMenuItem();
            this.menuVenda = new System.Windows.Forms.ToolStripMenuItem();
            this.menuPedido = new System.Windows.Forms.ToolStripMenuItem();
            this.menuSair = new System.Windows.Forms.ToolStripMenuItem();
            this.barraStatusPrincipal.SuspendLayout();
            this.menuPrincipal.SuspendLayout();
            this.SuspendLayout();
            // 
            // barraStatusPrincipal
            // 
            this.barraStatusPrincipal.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.lblVersion});
            this.barraStatusPrincipal.Location = new System.Drawing.Point(0, 428);
            this.barraStatusPrincipal.Name = "barraStatusPrincipal";
            this.barraStatusPrincipal.Size = new System.Drawing.Size(800, 22);
            this.barraStatusPrincipal.TabIndex = 1;
            this.barraStatusPrincipal.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(0, 17);
            // 
            // lblVersion
            // 
            this.lblVersion.Name = "lblVersion";
            this.lblVersion.Size = new System.Drawing.Size(59, 17);
            this.lblVersion.Text = "Versão 1.0";
            // 
            // menuPrincipal
            // 
            this.menuPrincipal.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnCadastro,
            this.menuVenda,
            this.menuSair});
            this.menuPrincipal.Location = new System.Drawing.Point(0, 0);
            this.menuPrincipal.Name = "menuPrincipal";
            this.menuPrincipal.Size = new System.Drawing.Size(800, 24);
            this.menuPrincipal.TabIndex = 3;
            this.menuPrincipal.Text = "menuStrip1";
            // 
            // btnCadastro
            // 
            this.btnCadastro.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuCliente,
            this.menuFilial,
            this.menuFornecedor,
            this.menuPessoaFisicia,
            this.menuPessoaJuridica,
            this.menuProduto});
            this.btnCadastro.Name = "btnCadastro";
            this.btnCadastro.Size = new System.Drawing.Size(66, 20);
            this.btnCadastro.Text = "&Cadatros";
            // 
            // menuCliente
            // 
            this.menuCliente.Name = "menuCliente";
            this.menuCliente.Size = new System.Drawing.Size(180, 22);
            this.menuCliente.Text = "Cliente";
            // 
            // menuFilial
            // 
            this.menuFilial.Name = "menuFilial";
            this.menuFilial.Size = new System.Drawing.Size(180, 22);
            this.menuFilial.Text = "Filial";
            // 
            // menuFornecedor
            // 
            this.menuFornecedor.Name = "menuFornecedor";
            this.menuFornecedor.Size = new System.Drawing.Size(180, 22);
            this.menuFornecedor.Text = "Fornecedor";
            // 
            // menuPessoaFisicia
            // 
            this.menuPessoaFisicia.Name = "menuPessoaFisicia";
            this.menuPessoaFisicia.Size = new System.Drawing.Size(180, 22);
            this.menuPessoaFisicia.Text = "Pessoa física";
            // 
            // menuPessoaJuridica
            // 
            this.menuPessoaJuridica.Name = "menuPessoaJuridica";
            this.menuPessoaJuridica.Size = new System.Drawing.Size(180, 22);
            this.menuPessoaJuridica.Text = "Pessoa Jurídica";
            // 
            // menuProduto
            // 
            this.menuProduto.Name = "menuProduto";
            this.menuProduto.Size = new System.Drawing.Size(180, 22);
            this.menuProduto.Text = "Produto";
            // 
            // menuVenda
            // 
            this.menuVenda.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuPedido});
            this.menuVenda.Name = "menuVenda";
            this.menuVenda.Size = new System.Drawing.Size(51, 20);
            this.menuVenda.Text = "&Venda";
            // 
            // menuPedido
            // 
            this.menuPedido.Name = "menuPedido";
            this.menuPedido.Size = new System.Drawing.Size(180, 22);
            this.menuPedido.Text = "Pedido";
            this.menuPedido.Click += new System.EventHandler(this.menuPedido_Click);
            // 
            // menuSair
            // 
            this.menuSair.Name = "menuSair";
            this.menuSair.Size = new System.Drawing.Size(38, 20);
            this.menuSair.Text = "&Sair";
            this.menuSair.Click += new System.EventHandler(this.menuSair_Click);
            // 
            // FrmMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.barraStatusPrincipal);
            this.Controls.Add(this.menuPrincipal);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuPrincipal;
            this.MaximizeBox = false;
            this.Name = "FrmMenu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sistema de Vendas";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.barraStatusPrincipal.ResumeLayout(false);
            this.barraStatusPrincipal.PerformLayout();
            this.menuPrincipal.ResumeLayout(false);
            this.menuPrincipal.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.StatusStrip barraStatusPrincipal;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripStatusLabel lblVersion;
        private System.Windows.Forms.MenuStrip menuPrincipal;
        private System.Windows.Forms.ToolStripMenuItem btnCadastro;
        private System.Windows.Forms.ToolStripMenuItem menuCliente;
        private System.Windows.Forms.ToolStripMenuItem menuVenda;
        private System.Windows.Forms.ToolStripMenuItem menuSair;
        private System.Windows.Forms.ToolStripMenuItem menuFilial;
        private System.Windows.Forms.ToolStripMenuItem menuFornecedor;
        private System.Windows.Forms.ToolStripMenuItem menuPessoaFisicia;
        private System.Windows.Forms.ToolStripMenuItem menuPessoaJuridica;
        private System.Windows.Forms.ToolStripMenuItem menuProduto;
        private System.Windows.Forms.ToolStripMenuItem menuPedido;
    }
}