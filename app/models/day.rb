class Day < ActiveRecord::Base
  has_and_belongs_to_many :people

  def to_s
    name
  end
end
