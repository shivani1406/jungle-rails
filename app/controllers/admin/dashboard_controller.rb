class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD'], except: [:index]
  def show
    @count_products = Product.count
    @count_category = Category.count
  end
end
