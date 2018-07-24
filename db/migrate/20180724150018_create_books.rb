class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :page_number
      t.integer :author_id

      t.timestamps
    end
  end
end
