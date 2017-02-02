class CategoriesController < ApplicationController
  before_action :require_login
  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to posts_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to categories_path(@category)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to posts_path
  end

private

  def category_params
    params.require(:category).permit(:name)
  end
end
