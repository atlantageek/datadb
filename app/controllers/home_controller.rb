class HomeController < ApplicationController
  def index
  end

  def search
    @categories = Category.find(:all)
  end
end
