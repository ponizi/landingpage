class NewspaperController < ApplicationController
  def index
    @newspaper = Newspaper.new
  end

  def new
    @newspaper = Newspaper.new
  end
  
  def create
    @newspaper = Newspaper.new(email: visitor_params[:email])
   if @newspaper.save
    flash[:success] = "Message Bien Envoyé !"
    MainMailer.newspaper_email(@newspaper).deliver_now
   else
    flash[:danger] = "Message non remis : Adresse email manquante"
   end
   redirect_to newspaper_index_path
  end

  def visitor_params
    params.require(:newspaper).permit(:email)
  end

end
