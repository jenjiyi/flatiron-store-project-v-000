class ChangeDefaultToLineItems < ActiveRecord::Migration
  def change
   change_column_default :line_items, :quantity, from: 0, to: 1
  end
end
