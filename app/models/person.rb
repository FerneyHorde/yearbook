class Person < ActiveRecord::Base
  belongs_to :family
  has_and_belongs_to_many :days
  default_scope { order('name')}

  def to_s
    name
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
end
