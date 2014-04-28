class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.references :person, index: true
      t.text :content

      t.timestamps
    end
  end
end
