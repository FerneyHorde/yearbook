class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  def to_s
    caption || filename
  end
end
