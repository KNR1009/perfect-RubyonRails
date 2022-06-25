class CreateAddStatusToBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :add_status_to_books do |t|
      t.integer :sales_satus

      t.timestamps
    end
  end
end
