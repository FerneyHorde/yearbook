class Article < ActiveRecord::Base
  resourcify
  def authors
    User.with_role(:author,self)
  end
end
