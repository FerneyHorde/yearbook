class TagsController < ApplicationController

  def index
    @tags = []
    Image.select('tags').distinct.each do |tag|
      @tags.push *(tag.tags)
    end
    @tags.uniq!
    @tags.sort!
  end

  def show
    @tag = params[:id]
    @images = Image.where("? = ANY (tags)", @tag)
  end
end
