class HomeController < ApplicationController
  def index
    @result = nil

    if params[:x].present?
      x = params[:x].to_i
      @result = NumberCalculatorService.total_inc_dec(x)
    end
  end
end
