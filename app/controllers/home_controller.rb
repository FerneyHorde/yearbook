class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => :index

  def index
    @articles = Article.limit(5)
  end
end
