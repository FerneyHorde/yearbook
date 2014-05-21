class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def to_s
    caption || filename
  end
end
