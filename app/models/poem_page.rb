class PoemPage < ActiveRecord::Base
  has_many :images, as: :imageable
  default_scope { order('number')}
end
