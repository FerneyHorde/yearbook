class AddLastoperson < ActiveRecord::Migration
  def change
    change_table :people do |t|
      t.string :last
    end
    Person.reset_column_information
    Family.find_each do |fam|
      last = fam.name
      fam.people.each do |person|
        person.last = last
        person.save
      end
    end
  end
end
