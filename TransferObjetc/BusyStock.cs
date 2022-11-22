using System;

namespace TransferObjetc
{
    public class BusyStock
    {
        public Branch Filial { get; set; }
        public Product Produto { get; set; }
        public int Quantidade { get; set; }
        public DateTime DataHora { get; set; }
        public String EntrouSaiu { get; set; }
    }
}
