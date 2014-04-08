class Person < ActiveRecord::Base
  belongs_to :family
  has_and_belongs_to_many :days

  def to_s
    name
  end

  def img
    "/people/#{family}/#{name}.jpg"
  end
end
