using System;

namespace TransferObjetc
{
    public class Request
    {
        public int IdPedido { get; set; }
        public DateTime DataHora { get; set; }
        public Operation Operacao { get; set; }
        public Situation Situacao { get; set; }
        public Person Emitente { get; set; }
        public Person Destinatario { get; set; }

    }
}
