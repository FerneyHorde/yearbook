class Family < ActiveRecord::Base
  has_many :people

  def to_s
    name
  end
end
