using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace asp_net_backend.Helper_Code.Common
{
    public class RSAHelper
    {

        private static string _privateKey = "<RSAKeyValue><Modulus>poQS/c9tLkgg84xYZpnUBHP6fy24D6XmzhQ8yCOG317hfUNhRt6Z9N4oTn+QcOTh/DAnul4Q901GrHbPrMB8tl1LtbpKbvGftPhyR7OLQVnWC1Oz10t2tHEo7mqyPyAVuYsq8Q1E3YNTh2V6+PRvMiAWGUHGyyG7fKjt/R9W+RE=</Modulus><Exponent>AQAB</Exponent><P>4G09wYejA4iLakpAcjXbE/zV9tXTNsYqVIWeXF4hzwMmwmin7ru/WQzXu2DdapXXOJIKqrkfzXlcPwCsW5b9rQ==</P><Q>vfEq13Et+cP4eGgsR+crDQH0Mi+G6UW5ACfuDs/zam1o+CE70pLgeWawfqW4jRN30/VHDnTF9DZuotH6zihNdQ==</Q><DP>JoZaHYidERQ1am+IlJJuIwY57H9UHIjz50JwpsZ540FVO/YfLboI5M5xkfbUy2EhatKXBit1LB5zGVWSQL6wmQ==</DP><DQ>Gxk7KX2GN6oT2unR13hNlg9/TWGmd8VwvWr09bwJWFe/sBbduA8oY2mZKJhwGgB7CgxmVNOoIk1Zv3UBuUPauQ==</DQ><InverseQ>ZwJpSUZ09lCfiCF3ILB6F1q+6NC5hFH0O4924X9B4LZ8G4PRuudBMu1Yg0WNROUqVi3zfihKvzHnquHshSL56A==</InverseQ><D>pPQNRDVpeQGm8t1C7VDRwR+LNNV7krTMMbXGiJT5FOoPAmHvSZ9WcEZrM2gXFF8IpySlFm/86p84tbx0+jMs1niU52VsTscsamGbTzbsxeoHAt1fQUvzYveOGoRezotXblboVB2971r6avMHNtAk0FAdjvh4TjGZJCGTqNHD0mE=</D></RSAKeyValue>";
        private static string _publicKey = "<RSAKeyValue><Modulus>poQS/c9tLkgg84xYZpnUBHP6fy24D6XmzhQ8yCOG317hfUNhRt6Z9N4oTn+QcOTh/DAnul4Q901GrHbPrMB8tl1LtbpKbvGftPhyR7OLQVnWC1Oz10t2tHEo7mqyPyAVuYsq8Q1E3YNTh2V6+PRvMiAWGUHGyyG7fKjt/R9W+RE=</Modulus><Exponent>AQAB</Exponent></RSAKeyValue>";
        private static UnicodeEncoding _encoder = new UnicodeEncoding();

        public static string Decrypt(string data)
        {
            try
            {
                var rsa = new RSACryptoServiceProvider();
                var dataArray = data.Split(new char[] { ',' });

                byte[] dataByte = new byte[dataArray.Length];
                for (int i = 0; i < dataArray.Length; i++)
                {
                    dataByte[i] = Convert.ToByte(dataArray[i]);
                }

                rsa.FromXmlString(_privateKey);
                var decryptedByte = rsa.Decrypt(dataByte, false);
                return _encoder.GetString(decryptedByte);
            }
            catch (Exception)
            {
                return "Decryption Error";
                //throw new RSAException();
            }
        }

        public static string Encrypt(string data)
        {
            try
            {
                var rsa = new RSACryptoServiceProvider();
                rsa.FromXmlString(_publicKey);
                var dataToEncrypt = _encoder.GetBytes(data);
                var encryptedByteArray = rsa.Encrypt(dataToEncrypt, false).ToArray();
                var length = encryptedByteArray.Count();
                var item = 0;
                var sb = new StringBuilder();
                foreach (var x in encryptedByteArray)
                {
                    item++;
                    sb.Append(x);

                    if (item < length)
                        sb.Append(",");
                }

                return sb.ToString();

            }
            catch (Exception)
            {
                return "Encryption Error";

                //throw new RSAException();
            }
        }

        public class RSAException : Exception
        {

            public RSAException() : base("RSA Encryption Error") { }
        }


    }


    
}