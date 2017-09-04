class AddColumnsToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :isbn, :string
    add_column :books, :name, :string
    add_column :books, :author, :string
    add_column :books, :year, :string
  end
end
