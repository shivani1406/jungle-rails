class Admin::SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def sale_params
    params.require(:sale).permit(
      :name,
      :starts_on,
      :ends_on,
      :percent_off,
      
    )
  end
end
