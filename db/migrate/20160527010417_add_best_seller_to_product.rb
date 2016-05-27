class AddBestSellerToProduct < ActiveRecord::Migration
  def change
    add_column :products, :best_seller, :boolean
  end
end
