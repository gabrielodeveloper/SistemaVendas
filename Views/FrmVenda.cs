using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Views
{
    public partial class FrmPedidoVenda : Form
    {
        public FrmPedidoVenda()
        {
            InitializeComponent();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnPesquisarEmi_Click(object sender, EventArgs e)
        {
            FrmFilialPesquisar frmFilialPesquisar = new FrmFilialPesquisar();
            frmFilialPesquisar.ShowDialog();
        }
    }
}
