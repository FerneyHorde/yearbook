class CreateYbClasses < ActiveRecord::Migration
  def change
    create_table :yb_classes do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
