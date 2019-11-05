class GamingController < ApplicationController
  def index
    @gaming = Gaming.new
  end

  def new
    @gaming = Gaming.new
  end
  
  def create
    @gaming = Gaming.new(email: visitor_params[:email])
   if @gaming.save
    flash[:success] = "Message Bien Envoyé !"
    MainMailer.gaming_email(@gaming).deliver_now
   else
    flash[:danger] = "Message non remis : Adresse email manquante"
   end
   redirect_to gaming_index_path
  end

  def visitor_params
    params.require(:gaming).permit(:email)
  end

end
