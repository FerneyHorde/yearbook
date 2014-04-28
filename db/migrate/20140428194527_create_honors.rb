class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.references :person, index: true
      t.text :content

      t.timestamps
    end
  end
end
