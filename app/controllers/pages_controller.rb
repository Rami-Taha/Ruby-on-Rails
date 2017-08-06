class PagesController < ApplicationController
  def index
    @articles = Article.last(4)
  end

  def about
  end

  def contact
  end
end
