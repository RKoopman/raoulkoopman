class AdminsController < ApplicationController
  before_action :require_login
  before_action :correct_admin, only: [:edit, :update]

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
  end

  def create
    @admin = Admin.create(admin_params)
    redirect_to admins_path(@admin)
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params(:user_name, :email))
    redirect_to admin_path(@admin)
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to root_path
  end

private

  def admin_params(*args)
    params.require(:admin).permit(*args)
  end

  def correct_admin
    @admin = Admin.find(params[:id])
    redirect_to home_path unless @admin == current_admin
  end


end
