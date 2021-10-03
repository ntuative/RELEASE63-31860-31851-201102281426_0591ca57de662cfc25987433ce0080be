package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1787:int = 0;
      
      public static const const_1364:int = 1;
      
      public static const const_1375:int = 2;
      
      public static const const_1921:int = 3;
      
      public static const const_1843:int = 4;
      
      public static const const_1804:int = 5;
      
      public static const const_1404:int = 10;
      
      public static const const_1737:int = 11;
      
      public static const const_1822:int = 12;
      
      public static const const_1939:int = 13;
      
      public static const const_1719:int = 16;
      
      public static const const_1884:int = 17;
      
      public static const const_1794:int = 18;
      
      public static const const_1905:int = 19;
      
      public static const const_1887:int = 20;
      
      public static const const_1875:int = 22;
      
      public static const const_1841:int = 23;
      
      public static const const_1768:int = 24;
      
      public static const const_1831:int = 25;
      
      public static const const_1735:int = 26;
      
      public static const const_1891:int = 27;
      
      public static const const_1879:int = 28;
      
      public static const const_1860:int = 29;
      
      public static const const_1751:int = 100;
      
      public static const const_1800:int = 101;
      
      public static const const_1782:int = 102;
      
      public static const const_1808:int = 103;
      
      public static const const_1784:int = 104;
      
      public static const const_1854:int = 105;
      
      public static const const_1731:int = 106;
      
      public static const const_1915:int = 107;
      
      public static const const_1749:int = 108;
      
      public static const const_1823:int = 109;
      
      public static const const_1728:int = 110;
      
      public static const const_1752:int = 111;
      
      public static const const_1744:int = 112;
      
      public static const const_1754:int = 113;
      
      public static const const_1943:int = 114;
      
      public static const const_1777:int = 115;
      
      public static const const_1761:int = 116;
      
      public static const const_1855:int = 117;
      
      public static const const_1757:int = 118;
      
      public static const const_1931:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1364:
            case const_1404:
               return "banned";
            case const_1375:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
