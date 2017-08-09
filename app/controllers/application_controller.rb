class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path
    flash[:danger]= "Sorry, your not authorized to acess this page"
  end
end
