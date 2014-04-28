class CreateGraduates < ActiveRecord::Migration
  def change
    create_table :graduates do |t|
      t.references :person, index: true
      t.text :content

      t.timestamps
    end
  end
end
