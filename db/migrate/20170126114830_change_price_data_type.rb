class ChangePriceDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal, precision: 9, scale: 3
  end
end
