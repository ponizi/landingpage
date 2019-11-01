class VisitorController < ApplicationController
  def index
    @visitor = Visitor.new
    
  end

  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(first_name: visitor_params[:first_name], last_name: visitor_params[:last_name], phone_number: visitor_params[:phone_number], email: visitor_params[:email], message: visitor_params[:message])
   if @visitor.save
    flash[:success] = "Message Bien Envoyé !"
    MainMailer.welcome_email(@visitor).deliver_now
   else
    flash[:danger] = "Message non remis : Adresse email manquante"
   end
   redirect_to root_path
  end

  def visitor_params
    params.require(:visitor).permit(:first_name,:last_name,:phone_number,:email,:message)
  end


end
