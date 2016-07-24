class ChangeProductPriceToDecimal < ActiveRecord::Migration
   def change
    change_column :products, :price, 'decimal USING CAST(price AS decimal)'
   end
end
