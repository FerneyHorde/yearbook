class CreatePoemPages < ActiveRecord::Migration
  def change
    create_table :poem_pages do |t|
      t.integer :number
      t.text :lines

      t.timestamps
    end
  end
end
