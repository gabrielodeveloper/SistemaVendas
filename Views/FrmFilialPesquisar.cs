using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Reflection;

using TransferObjetc;
using Business;

namespace Views
{
    public partial class FrmFilialPesquisar : Form
    {
        public FrmFilialPesquisar()
        {
            InitializeComponent();
            dgvPrincipal.AutoGenerateColumns = false;
        }

        private void btnPesquisar_Click(object sender, EventArgs e)
        {

            try
            {
                BranchBusiness branchBusiness = new BranchBusiness();

                int codeTypening;
                BranchCollection branchCollection = new BranchCollection();

                if (int.TryParse(txtPesquisar.Text, out codeTypening) == true)
                {
                    branchCollection = branchBusiness.QueryForCode(codeTypening);
                }
                else
                {
                    branchCollection = branchBusiness.QueryForName(txtPesquisar.Text);

                }

                dgvPrincipal.DataSource = null;
                dgvPrincipal.DataSource = branchCollection;
                dgvPrincipal.Update();
                dgvPrincipal.Refresh();

            }
            catch (Exception ex)
            {
                throw new Exception("Não foi possível consultar as informações desta filial. Detalhes: " + ex.Message);
            }


        }

        private object BindProperty(object property, string propertyName)
        {
            try
            {
                object result = "";

                if(propertyName.Contains("."))
                {
                    PropertyInfo[] propertyInfoArrey;
                    string propertyBeforeOfDot;

                    propertyBeforeOfDot = propertyName.Substring(0, propertyName.IndexOf("."));

                    if(property != null)
                    {
                        propertyInfoArrey = property.GetType().GetProperties();

                        foreach (PropertyInfo propertyInfo in propertyInfoArrey)
                        {
                            if(propertyInfo.Name == propertyBeforeOfDot)
                            {
                                result = BindProperty
                                    (
                                    propertyInfo.GetValue(property, null),
                                     propertyName.Substring(propertyName.IndexOf(".") + 1)
                                    );
                            }
                        }
                    }
                }
                else
                {
                    Type tpyPropertyType;
                    PropertyInfo pfoPropertyInfo;

                    if(property == null)
                    {
                        tpyPropertyType = property.GetType();
                        pfoPropertyInfo = tpyPropertyType.GetProperty(propertyName);
                        result = pfoPropertyInfo.GetValue(property, null);
                    }
                }


                return result;

            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        private void dgvPrincipal_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            try
            {
               if ((dgvPrincipal.Rows[e.RowIndex].DataBoundItem != null) && (dgvPrincipal.Columns[e.ColumnIndex].DataPropertyName.Contains(".")))
                {
                    e.Value = BindProperty(dgvPrincipal.Rows[e.RowIndex].DataBoundItem, dgvPrincipal.Columns[e.ColumnIndex].DataPropertyName);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
