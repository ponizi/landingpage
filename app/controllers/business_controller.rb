class BusinessController < ApplicationController
  def index
    @business = Business.new
  end

  def new
    @business = Business.new
  end
  
  def create
    @business = Business.new(business_params)
      if @business.save
      flash[:success] = "Nous avons reçu vos coordonnées, nous vous contacterons au plus vite"
      else
      flash[:danger] = "Adresse email manquante"

      end
   redirect_to business_index_path
  end

  def business_params
    params.require(:visitor).permit(:name,:phone_number,:email)
  end
end
