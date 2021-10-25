using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculadora
{
    public partial class Calculadora : Form
    {
        double total;
        double ultimoNumero;
        string operador;

        public void Limpar()
        {
            total = 0;
            ultimoNumero = 0;
            operador = "+";
            txtDisplay.Text = "0";
        }

        private void Calcular()
        {
            switch (operador)
            {
                case "+": total = total + ultimoNumero;
                    break;
                case "-": total = total - ultimoNumero;
                    break;
                case "/": total = total / ultimoNumero;
                    break;
                case "*": total = total * ultimoNumero;
                    break;
            }

            ultimoNumero = 0;
            txtDisplay.Text = total.ToString();
        }

        public Calculadora()
        {
            InitializeComponent();
            Limpar();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            Limpar();
        }
        
        private void gerarNumero(object sender, EventArgs e)
        {
            if (ultimoNumero == 0)
            {
                txtDisplay.Text = (sender as Button).Text;
            }
            else
            {
                txtDisplay.Text = txtDisplay.Text + (sender as Button).Text;
            }
            
            ultimoNumero = Convert.ToDouble(txtDisplay.Text);
        }

        private void operadores(object sender, EventArgs e)
        {
            ultimoNumero = Convert.ToDouble(txtDisplay.Text);
            Calcular();
            operador = (sender as Button).Text;
        }

        private void btnEquals_Click(object sender, EventArgs e)
        {
            ultimoNumero = Convert.ToDouble(txtDisplay.Text);
            Calcular();
            operador = "+";
            total = 0;
        }
    }
}