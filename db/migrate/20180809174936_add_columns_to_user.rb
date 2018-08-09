class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :contact, :string
    add_column :users, :tax_status_id, :integer
    add_column :users, :pan, :string
  end
end
