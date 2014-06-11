class AddTagToImage < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.string :tags, array: true, default: []
      t.index :tags, using: 'gin'
    end
  end
end
