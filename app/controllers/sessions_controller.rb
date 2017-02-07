class SessionsController < ApplicationController
  before_action :login_required
  skip_before_action :login_required, only: [:new, :create]

  def new
  end

  def create
    admin = Admin.find_by(email: params[:admin][:email])
    if admin.authenticate(params[:admin][:password_digest])
      session[:admin_id] = admin.id
      redirect_to admin_path(session[:admin_id])
    else
      flash.now[:message] = "please enter the correct password"
      redirect_to root_path
    end
  end

  def destroy
    session[:admin_id] = reset_session # can also = nil
    redirect_to root_path
  end
end
