class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.references :person, index: true
      t.text :content

      t.timestamps
    end
  end
end
