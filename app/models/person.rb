class Person < ActiveRecord::Base
  belongs_to :family
  has_and_belongs_to_many :days
  default_scope { order('name')}
  has_attached_file :portrait, :styles => {
    :large => "600x800#", 
    :medium => "300x400#", 
    :thumb => "150x200#" 
  }, :default_url => "/portrait/:style/missing.png"
  validates_attachment_content_type :portrait, :content_type => /\Aimage\/.*\Z/

  def to_s
    name
  end

  def full_name
    "#{name} #{family}"
  end

  def img
    "/people/#{family}/#{name}.jpg"
  end

  def age
    return 0 unless born_on
    years = Date.today.year - born_on.year
    years -= 1 if born_on > Date.today.years_ago( years )
    years
  end

  def import
    fn = "public#{img}"
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
