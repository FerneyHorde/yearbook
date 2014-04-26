class AddAgeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :born_on, :date
  end
end
