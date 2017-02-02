class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_admin
    Admin.find(session[:admin_id]) if session[:admin_id]
  end

  def login(admin)
    session[:admin_id] = @admin.id
  end

  def logged_in?
    !!current_admin
  end

  def login_required
    if !logged_in?
      redirect_to login_path
    end
  end

private
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end
end
