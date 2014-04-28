class Family < ActiveRecord::Base
  has_many :people
  default_scope { order('name')}
  def to_s
    name
  end
end
