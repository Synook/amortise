class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def create
    params[:category]['user_id'] = current_user.id
    @category = Category.new params.require(:category).permit(:name, :user_id)
    @category.save
    redirect_to '/'
  end
end
