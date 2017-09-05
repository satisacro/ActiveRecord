class AddColumnsToEditorial < ActiveRecord::Migration[5.1]
  def change
    add_column :editorials, :name, :string
    add_column :editorials, :city, :string
    add_column :editorials, :email, :string
  end
end
