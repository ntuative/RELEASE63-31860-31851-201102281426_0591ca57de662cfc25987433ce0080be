package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_825:BigInteger;
      
      private var var_2188:BigInteger;
      
      private var var_1623:BigInteger;
      
      private var var_2260:BigInteger;
      
      private var var_1305:BigInteger;
      
      private var var_1622:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1305 = param1;
         this.var_1622 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1305.toString() + ",generator: " + this.var_1622.toString() + ",secret: " + param1);
         this.var_825 = new BigInteger();
         this.var_825.fromRadix(param1,param2);
         this.var_2188 = this.var_1622.modPow(this.var_825,this.var_1305);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1623 = new BigInteger();
         this.var_1623.fromRadix(param1,param2);
         this.var_2260 = this.var_1623.modPow(this.var_825,this.var_1305);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2188.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2260.toRadix(param1);
      }
   }
}
