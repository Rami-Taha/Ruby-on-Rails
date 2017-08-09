class PagesController < ApplicationController
  def index
    @articles = Article.all.paginate(:page => params[:page], :per_page => 5).order('updated_at DESC')
  end

  def about
  end

  def contact
    @contact = Contact.new
  end
end
