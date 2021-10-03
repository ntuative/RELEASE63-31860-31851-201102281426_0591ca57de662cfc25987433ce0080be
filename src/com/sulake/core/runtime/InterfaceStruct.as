package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1289:IID;
      
      private var var_1600:String;
      
      private var var_101:IUnknown;
      
      private var var_679:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1289 = param1;
         this.var_1600 = getQualifiedClassName(this.var_1289);
         this.var_101 = param2;
         this.var_679 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1289;
      }
      
      public function get iis() : String
      {
         return this.var_1600;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_101;
      }
      
      public function get references() : uint
      {
         return this.var_679;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_101 == null;
      }
      
      public function dispose() : void
      {
         this.var_1289 = null;
         this.var_1600 = null;
         this.var_101 = null;
         this.var_679 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_679;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_679) : uint(0);
      }
   }
}
