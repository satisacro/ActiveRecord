class CreateEditorials < ActiveRecord::Migration[5.1]
  def change
    create_table :editorials do |t|

      t.timestamps
    end
  end
end
