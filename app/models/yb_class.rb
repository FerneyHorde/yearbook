class YbClass < ActiveRecord::Base
  has_many :images, as: :imageable
  default_scope { order('name')}
end
