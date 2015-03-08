class AddRowsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :row_order, :integer
  end
end
