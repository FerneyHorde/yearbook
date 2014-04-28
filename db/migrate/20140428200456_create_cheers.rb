class CreateCheers < ActiveRecord::Migration
  def change
    create_table :cheers do |t|
      t.text :title
      t.text :cheer

      t.timestamps
    end
  end
end
