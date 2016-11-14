class SiteController < ApplicationController
  def home
  end

  def contact
  end

  def calculator
  end

  def calculate
    @num1 = params[:first_num].to_f.round
    @num2 = params[:second_num].to_f.round
    @result = @num1 + @num2
  end
end
