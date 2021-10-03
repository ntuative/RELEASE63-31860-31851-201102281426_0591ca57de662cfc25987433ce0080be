package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_949:IAssetLoader;
      
      private var var_1738:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1738 = param1;
         this.var_949 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1738;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_949;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_949 != null)
            {
               if(!this.var_949.disposed)
               {
                  this.var_949.dispose();
                  this.var_949 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
