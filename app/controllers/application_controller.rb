class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied, :with => :access
  
  protected
    def access
      respond_to do |format|
        format.js { render :text => "alert('you must loggin')" }
        format.html { redirect_to(root_url) }
      end
    end
  
  
end
