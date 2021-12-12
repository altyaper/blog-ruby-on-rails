class HomeController < ApplicationController
  def index
    @articles = Article.order(:created_at).reverse_order
  end
end