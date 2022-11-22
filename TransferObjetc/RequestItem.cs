using System;

namespace TransferObjetc
{
    public class RequestItem
    {
        public Request Pedido { get; set; }
        public Product Produto { get; set; }
        public int Quantidade { get; set; }
        public int MyProperty { get; set; }
        public Decimal ValorUnitario { get; set; }
        public Decimal PercentualDesconto { get; set; }
        public Decimal ValorDesconto { get; set; }
        public Decimal ValorTotal { get; set; }

    }
}
