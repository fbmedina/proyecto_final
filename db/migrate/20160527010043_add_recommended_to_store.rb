class AddRecommendedToStore < ActiveRecord::Migration
  def change
    add_column :stores, :recommended, :boolean
  end
end
