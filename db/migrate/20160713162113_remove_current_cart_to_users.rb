class RemoveCurrentCartToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :current_cart, :integer
  end
end
