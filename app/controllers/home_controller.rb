class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @transaction = Transaction.new
    @category = Category.new
  end
end
