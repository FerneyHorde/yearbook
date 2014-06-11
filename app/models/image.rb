class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :image, :styles => {
    :medium => "300x300>", 
    :thumb => "100x100>" 
  }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def to_s
    caption || filename
  end

  def import
    fn = "public#{filename}"
    puts fn
    if File.exist? fn
      puts "exists"
      self.portrait = File.new(fn)
      save!
    else
      puts "no exist"
    end
  end

  def self.import_all
    find_each do |person|
      person.import
    end
  end

end
