class PortfolioController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def send_form

    ContactMailer.email_contact(params).deliver
    redirect_to action: index, notice: 'Your list has been sent!'
  end


end
