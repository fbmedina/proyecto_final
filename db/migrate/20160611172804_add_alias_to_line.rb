class AddAliasToLine < ActiveRecord::Migration
  def change
    add_column :lines, :alias, :string
  end
end
