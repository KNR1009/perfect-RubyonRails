class AddStatusToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :sales_satus, :integer
  end
end
