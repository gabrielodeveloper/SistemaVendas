
namespace Views
{
    partial class FrmPedidoVenda
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
            this.lblEmitente = new System.Windows.Forms.Label();
            this.txtEmitente = new System.Windows.Forms.TextBox();
            this.btnPesquisarEmi = new System.Windows.Forms.Button();
            this.btnPesquisarDes = new System.Windows.Forms.Button();
            this.txtDestinatario = new System.Windows.Forms.TextBox();
            this.lblDestinatario = new System.Windows.Forms.Label();
            this.lblNumero = new System.Windows.Forms.Label();
            this.txtNumero = new System.Windows.Forms.TextBox();
            this.txtOperacao = new System.Windows.Forms.TextBox();
            this.lblOperacao = new System.Windows.Forms.Label();
            this.txtDataHora = new System.Windows.Forms.TextBox();
            this.lblDataHora = new System.Windows.Forms.Label();
            this.txtSituacao = new System.Windows.Forms.TextBox();
            this.lblSituacao = new System.Windows.Forms.Label();
            this.gbxItens = new System.Windows.Forms.GroupBox();
            this.btnAlterar = new System.Windows.Forms.Button();
            this.btnExcluir = new System.Windows.Forms.Button();
            this.txtValorTotal = new System.Windows.Forms.TextBox();
            this.lblValor = new System.Windows.Forms.Label();
            this.txtItens = new System.Windows.Forms.TextBox();
            this.lblItens = new System.Windows.Forms.Label();
            this.dgvProduto = new System.Windows.Forms.DataGridView();
            this.txtEstoque = new System.Windows.Forms.TextBox();
            this.lblEstoque = new System.Windows.Forms.Label();
            this.txtDesconto = new System.Windows.Forms.TextBox();
            this.lblDesconto = new System.Windows.Forms.Label();
            this.txtValorUnitario = new System.Windows.Forms.TextBox();
            this.lblValorUnitario = new System.Windows.Forms.Label();
            this.lblQuantidade = new System.Windows.Forms.Label();
            this.btnInserir = new System.Windows.Forms.Button();
            this.txtQuantidade = new System.Windows.Forms.TextBox();
            this.btnPesquisarProd = new System.Windows.Forms.Button();
            this.txtProdutoId = new System.Windows.Forms.TextBox();
            this.txtProduto = new System.Windows.Forms.TextBox();
            this.lblProduto = new System.Windows.Forms.Label();
            this.btnFinalizar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnFechar = new System.Windows.Forms.Button();
            this.gbxItens.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProduto)).BeginInit();
            this.SuspendLayout();
            // 
            // lblEmitente
            // 
            this.lblEmitente.AutoSize = true;
            this.lblEmitente.Location = new System.Drawing.Point(5, 5);
            this.lblEmitente.Name = "lblEmitente";
            this.lblEmitente.Size = new System.Drawing.Size(48, 13);
            this.lblEmitente.TabIndex = 0;
            this.lblEmitente.Text = "Emitente";
            // 
            // txtEmitente
            // 
            this.txtEmitente.Location = new System.Drawing.Point(5, 24);
            this.txtEmitente.Name = "txtEmitente";
            this.txtEmitente.Size = new System.Drawing.Size(471, 20);
            this.txtEmitente.TabIndex = 1;
            // 
            // btnPesquisarEmi
            // 
            this.btnPesquisarEmi.Location = new System.Drawing.Point(494, 23);
            this.btnPesquisarEmi.Name = "btnPesquisarEmi";
            this.btnPesquisarEmi.Size = new System.Drawing.Size(43, 23);
            this.btnPesquisarEmi.TabIndex = 2;
            this.btnPesquisarEmi.Text = ". . . ";
            this.btnPesquisarEmi.UseVisualStyleBackColor = true;
            this.btnPesquisarEmi.Click += new System.EventHandler(this.btnPesquisarEmi_Click);
            // 
            // btnPesquisarDes
            // 
            this.btnPesquisarDes.Location = new System.Drawing.Point(494, 68);
            this.btnPesquisarDes.Name = "btnPesquisarDes";
            this.btnPesquisarDes.Size = new System.Drawing.Size(43, 23);
            this.btnPesquisarDes.TabIndex = 5;
            this.btnPesquisarDes.Text = ". . . ";
            this.btnPesquisarDes.UseVisualStyleBackColor = true;
            // 
            // txtDestinatario
            // 
            this.txtDestinatario.Location = new System.Drawing.Point(4, 69);
            this.txtDestinatario.Name = "txtDestinatario";
            this.txtDestinatario.Size = new System.Drawing.Size(471, 20);
            this.txtDestinatario.TabIndex = 4;
            // 
            // lblDestinatario
            // 
            this.lblDestinatario.AutoSize = true;
            this.lblDestinatario.Location = new System.Drawing.Point(4, 51);
            this.lblDestinatario.Name = "lblDestinatario";
            this.lblDestinatario.Size = new System.Drawing.Size(63, 13);
            this.lblDestinatario.TabIndex = 3;
            this.lblDestinatario.Text = "Destinatário";
            // 
            // lblNumero
            // 
            this.lblNumero.AutoSize = true;
            this.lblNumero.Location = new System.Drawing.Point(554, 5);
            this.lblNumero.Name = "lblNumero";
            this.lblNumero.Size = new System.Drawing.Size(44, 13);
            this.lblNumero.TabIndex = 6;
            this.lblNumero.Text = "Número";
            // 
            // txtNumero
            // 
            this.txtNumero.Location = new System.Drawing.Point(554, 24);
            this.txtNumero.Name = "txtNumero";
            this.txtNumero.ReadOnly = true;
            this.txtNumero.Size = new System.Drawing.Size(115, 20);
            this.txtNumero.TabIndex = 7;
            this.txtNumero.TabStop = false;
            // 
            // txtOperacao
            // 
            this.txtOperacao.Location = new System.Drawing.Point(554, 69);
            this.txtOperacao.Name = "txtOperacao";
            this.txtOperacao.ReadOnly = true;
            this.txtOperacao.Size = new System.Drawing.Size(115, 20);
            this.txtOperacao.TabIndex = 9;
            this.txtOperacao.TabStop = false;
            // 
            // lblOperacao
            // 
            this.lblOperacao.AutoSize = true;
            this.lblOperacao.Location = new System.Drawing.Point(554, 53);
            this.lblOperacao.Name = "lblOperacao";
            this.lblOperacao.Size = new System.Drawing.Size(54, 13);
            this.lblOperacao.TabIndex = 8;
            this.lblOperacao.Text = "Operação";
            // 
            // txtDataHora
            // 
            this.txtDataHora.Location = new System.Drawing.Point(675, 24);
            this.txtDataHora.Name = "txtDataHora";
            this.txtDataHora.ReadOnly = true;
            this.txtDataHora.Size = new System.Drawing.Size(108, 20);
            this.txtDataHora.TabIndex = 11;
            this.txtDataHora.TabStop = false;
            // 
            // lblDataHora
            // 
            this.lblDataHora.AutoSize = true;
            this.lblDataHora.Location = new System.Drawing.Point(675, 5);
            this.lblDataHora.Name = "lblDataHora";
            this.lblDataHora.Size = new System.Drawing.Size(58, 13);
            this.lblDataHora.TabIndex = 10;
            this.lblDataHora.Text = "Data/Hora";
            // 
            // txtSituacao
            // 
            this.txtSituacao.Location = new System.Drawing.Point(675, 69);
            this.txtSituacao.Name = "txtSituacao";
            this.txtSituacao.ReadOnly = true;
            this.txtSituacao.Size = new System.Drawing.Size(108, 20);
            this.txtSituacao.TabIndex = 13;
            this.txtSituacao.TabStop = false;
            // 
            // lblSituacao
            // 
            this.lblSituacao.AutoSize = true;
            this.lblSituacao.Location = new System.Drawing.Point(675, 53);
            this.lblSituacao.Name = "lblSituacao";
            this.lblSituacao.Size = new System.Drawing.Size(49, 13);
            this.lblSituacao.TabIndex = 12;
            this.lblSituacao.Text = "Situação";
            // 
            // gbxItens
            // 
            this.gbxItens.Controls.Add(this.btnAlterar);
            this.gbxItens.Controls.Add(this.btnExcluir);
            this.gbxItens.Controls.Add(this.txtValorTotal);
            this.gbxItens.Controls.Add(this.lblValor);
            this.gbxItens.Controls.Add(this.txtItens);
            this.gbxItens.Controls.Add(this.lblItens);
            this.gbxItens.Controls.Add(this.dgvProduto);
            this.gbxItens.Controls.Add(this.txtEstoque);
            this.gbxItens.Controls.Add(this.lblEstoque);
            this.gbxItens.Controls.Add(this.txtDesconto);
            this.gbxItens.Controls.Add(this.lblDesconto);
            this.gbxItens.Controls.Add(this.txtValorUnitario);
            this.gbxItens.Controls.Add(this.lblValorUnitario);
            this.gbxItens.Controls.Add(this.lblQuantidade);
            this.gbxItens.Controls.Add(this.btnInserir);
            this.gbxItens.Controls.Add(this.txtQuantidade);
            this.gbxItens.Controls.Add(this.btnPesquisarProd);
            this.gbxItens.Controls.Add(this.txtProdutoId);
            this.gbxItens.Controls.Add(this.txtProduto);
            this.gbxItens.Controls.Add(this.lblProduto);
            this.gbxItens.Location = new System.Drawing.Point(5, 95);
            this.gbxItens.Name = "gbxItens";
            this.gbxItens.Size = new System.Drawing.Size(783, 331);
            this.gbxItens.TabIndex = 14;
            this.gbxItens.TabStop = false;
            this.gbxItens.Text = "Itens";
            // 
            // btnAlterar
            // 
            this.btnAlterar.Location = new System.Drawing.Point(640, 262);
            this.btnAlterar.Name = "btnAlterar";
            this.btnAlterar.Size = new System.Drawing.Size(67, 23);
            this.btnAlterar.TabIndex = 26;
            this.btnAlterar.Text = "Alterar";
            this.btnAlterar.UseVisualStyleBackColor = true;
            // 
            // btnExcluir
            // 
            this.btnExcluir.Location = new System.Drawing.Point(713, 262);
            this.btnExcluir.Name = "btnExcluir";
            this.btnExcluir.Size = new System.Drawing.Size(65, 23);
            this.btnExcluir.TabIndex = 25;
            this.btnExcluir.Text = "Excluir";
            this.btnExcluir.UseVisualStyleBackColor = true;
            // 
            // txtValorTotal
            // 
            this.txtValorTotal.Location = new System.Drawing.Point(184, 263);
            this.txtValorTotal.Name = "txtValorTotal";
            this.txtValorTotal.ReadOnly = true;
            this.txtValorTotal.Size = new System.Drawing.Size(83, 20);
            this.txtValorTotal.TabIndex = 24;
            this.txtValorTotal.TabStop = false;
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Location = new System.Drawing.Point(141, 267);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(37, 13);
            this.lblValor.TabIndex = 23;
            this.lblValor.Text = "Valor: ";
            // 
            // txtItens
            // 
            this.txtItens.Location = new System.Drawing.Point(51, 263);
            this.txtItens.Name = "txtItens";
            this.txtItens.ReadOnly = true;
            this.txtItens.Size = new System.Drawing.Size(83, 20);
            this.txtItens.TabIndex = 22;
            this.txtItens.TabStop = false;
            // 
            // lblItens
            // 
            this.lblItens.AutoSize = true;
            this.lblItens.Location = new System.Drawing.Point(9, 267);
            this.lblItens.Name = "lblItens";
            this.lblItens.Size = new System.Drawing.Size(36, 13);
            this.lblItens.TabIndex = 21;
            this.lblItens.Text = "Itens: ";
            // 
            // dgvProduto
            // 
            this.dgvProduto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProduto.Location = new System.Drawing.Point(7, 80);
            this.dgvProduto.Name = "dgvProduto";
            this.dgvProduto.Size = new System.Drawing.Size(770, 176);
            this.dgvProduto.TabIndex = 20;
            // 
            // txtEstoque
            // 
            this.txtEstoque.Location = new System.Drawing.Point(694, 43);
            this.txtEstoque.Name = "txtEstoque";
            this.txtEstoque.ReadOnly = true;
            this.txtEstoque.Size = new System.Drawing.Size(83, 20);
            this.txtEstoque.TabIndex = 19;
            this.txtEstoque.TabStop = false;
            // 
            // lblEstoque
            // 
            this.lblEstoque.AutoSize = true;
            this.lblEstoque.Location = new System.Drawing.Point(694, 25);
            this.lblEstoque.Name = "lblEstoque";
            this.lblEstoque.Size = new System.Drawing.Size(46, 13);
            this.lblEstoque.TabIndex = 18;
            this.lblEstoque.Text = "Estoque";
            // 
            // txtDesconto
            // 
            this.txtDesconto.Location = new System.Drawing.Point(603, 43);
            this.txtDesconto.Name = "txtDesconto";
            this.txtDesconto.ReadOnly = true;
            this.txtDesconto.Size = new System.Drawing.Size(83, 20);
            this.txtDesconto.TabIndex = 17;
            this.txtDesconto.TabStop = false;
            // 
            // lblDesconto
            // 
            this.lblDesconto.AutoSize = true;
            this.lblDesconto.Location = new System.Drawing.Point(603, 25);
            this.lblDesconto.Name = "lblDesconto";
            this.lblDesconto.Size = new System.Drawing.Size(64, 13);
            this.lblDesconto.TabIndex = 16;
            this.lblDesconto.Text = "% Desconto";
            // 
            // txtValorUnitario
            // 
            this.txtValorUnitario.Location = new System.Drawing.Point(507, 43);
            this.txtValorUnitario.Name = "txtValorUnitario";
            this.txtValorUnitario.ReadOnly = true;
            this.txtValorUnitario.Size = new System.Drawing.Size(83, 20);
            this.txtValorUnitario.TabIndex = 15;
            this.txtValorUnitario.TabStop = false;
            // 
            // lblValorUnitario
            // 
            this.lblValorUnitario.AutoSize = true;
            this.lblValorUnitario.Location = new System.Drawing.Point(507, 25);
            this.lblValorUnitario.Name = "lblValorUnitario";
            this.lblValorUnitario.Size = new System.Drawing.Size(70, 13);
            this.lblValorUnitario.TabIndex = 14;
            this.lblValorUnitario.Text = "Valor Unitário";
            // 
            // lblQuantidade
            // 
            this.lblQuantidade.AutoSize = true;
            this.lblQuantidade.Location = new System.Drawing.Point(349, 25);
            this.lblQuantidade.Name = "lblQuantidade";
            this.lblQuantidade.Size = new System.Drawing.Size(62, 13);
            this.lblQuantidade.TabIndex = 13;
            this.lblQuantidade.Text = "Quantidade";
            // 
            // btnInserir
            // 
            this.btnInserir.Location = new System.Drawing.Point(447, 42);
            this.btnInserir.Name = "btnInserir";
            this.btnInserir.Size = new System.Drawing.Size(54, 23);
            this.btnInserir.TabIndex = 12;
            this.btnInserir.Text = "Inserir";
            this.btnInserir.UseVisualStyleBackColor = true;
            // 
            // txtQuantidade
            // 
            this.txtQuantidade.Location = new System.Drawing.Point(349, 43);
            this.txtQuantidade.Name = "txtQuantidade";
            this.txtQuantidade.Size = new System.Drawing.Size(92, 20);
            this.txtQuantidade.TabIndex = 11;
            // 
            // btnPesquisarProd
            // 
            this.btnPesquisarProd.Location = new System.Drawing.Point(295, 42);
            this.btnPesquisarProd.Name = "btnPesquisarProd";
            this.btnPesquisarProd.Size = new System.Drawing.Size(43, 23);
            this.btnPesquisarProd.TabIndex = 10;
            this.btnPesquisarProd.Text = ". . . ";
            this.btnPesquisarProd.UseVisualStyleBackColor = true;
            // 
            // txtProdutoId
            // 
            this.txtProdutoId.Location = new System.Drawing.Point(9, 43);
            this.txtProdutoId.Name = "txtProdutoId";
            this.txtProdutoId.ReadOnly = true;
            this.txtProdutoId.Size = new System.Drawing.Size(41, 20);
            this.txtProdutoId.TabIndex = 9;
            this.txtProdutoId.TabStop = false;
            // 
            // txtProduto
            // 
            this.txtProduto.Location = new System.Drawing.Point(56, 43);
            this.txtProduto.Name = "txtProduto";
            this.txtProduto.Size = new System.Drawing.Size(233, 20);
            this.txtProduto.TabIndex = 8;
            // 
            // lblProduto
            // 
            this.lblProduto.AutoSize = true;
            this.lblProduto.Location = new System.Drawing.Point(9, 25);
            this.lblProduto.Name = "lblProduto";
            this.lblProduto.Size = new System.Drawing.Size(44, 13);
            this.lblProduto.TabIndex = 7;
            this.lblProduto.Text = "Produto";
            // 
            // btnFinalizar
            // 
            this.btnFinalizar.Location = new System.Drawing.Point(546, 432);
            this.btnFinalizar.Name = "btnFinalizar";
            this.btnFinalizar.Size = new System.Drawing.Size(75, 23);
            this.btnFinalizar.TabIndex = 15;
            this.btnFinalizar.Text = "Finalizar";
            this.btnFinalizar.UseVisualStyleBackColor = true;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(627, 432);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 16;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // btnFechar
            // 
            this.btnFechar.Location = new System.Drawing.Point(708, 432);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(75, 23);
            this.btnFechar.TabIndex = 17;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.button9_Click);
            // 
            // FrmPedidoVenda
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 463);
            this.Controls.Add(this.btnFechar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnFinalizar);
            this.Controls.Add(this.gbxItens);
            this.Controls.Add(this.txtSituacao);
            this.Controls.Add(this.lblSituacao);
            this.Controls.Add(this.txtDataHora);
            this.Controls.Add(this.lblDataHora);
            this.Controls.Add(this.txtOperacao);
            this.Controls.Add(this.lblOperacao);
            this.Controls.Add(this.txtNumero);
            this.Controls.Add(this.lblNumero);
            this.Controls.Add(this.btnPesquisarDes);
            this.Controls.Add(this.txtDestinatario);
            this.Controls.Add(this.lblDestinatario);
            this.Controls.Add(this.btnPesquisarEmi);
            this.Controls.Add(this.txtEmitente);
            this.Controls.Add(this.lblEmitente);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmPedidoVenda";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Pedido de Venda";
            this.gbxItens.ResumeLayout(false);
            this.gbxItens.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProduto)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblEmitente;
        private System.Windows.Forms.TextBox txtEmitente;
        private System.Windows.Forms.Button btnPesquisarEmi;
        private System.Windows.Forms.Button btnPesquisarDes;
        private System.Windows.Forms.TextBox txtDestinatario;
        private System.Windows.Forms.Label lblDestinatario;
        private System.Windows.Forms.Label lblNumero;
        private System.Windows.Forms.TextBox txtNumero;
        private System.Windows.Forms.TextBox txtOperacao;
        private System.Windows.Forms.Label lblOperacao;
        private System.Windows.Forms.TextBox txtDataHora;
        private System.Windows.Forms.Label lblDataHora;
        private System.Windows.Forms.TextBox txtSituacao;
        private System.Windows.Forms.Label lblSituacao;
        private System.Windows.Forms.GroupBox gbxItens;
        private System.Windows.Forms.Button btnAlterar;
        private System.Windows.Forms.Button btnExcluir;
        private System.Windows.Forms.TextBox txtValorTotal;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.TextBox txtItens;
        private System.Windows.Forms.Label lblItens;
        private System.Windows.Forms.DataGridView dgvProduto;
        private System.Windows.Forms.TextBox txtEstoque;
        private System.Windows.Forms.Label lblEstoque;
        private System.Windows.Forms.TextBox txtDesconto;
        private System.Windows.Forms.Label lblDesconto;
        private System.Windows.Forms.TextBox txtValorUnitario;
        private System.Windows.Forms.Label lblValorUnitario;
        private System.Windows.Forms.Label lblQuantidade;
        private System.Windows.Forms.Button btnInserir;
        private System.Windows.Forms.TextBox txtQuantidade;
        private System.Windows.Forms.Button btnPesquisarProd;
        private System.Windows.Forms.TextBox txtProdutoId;
        private System.Windows.Forms.TextBox txtProduto;
        private System.Windows.Forms.Label lblProduto;
        private System.Windows.Forms.Button btnFinalizar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnFechar;
    }
}