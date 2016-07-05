class ChangeproductId < ActiveRecord::Migration
  def change

  	rename_column :comments, :product_id, :post_id
  end
end
