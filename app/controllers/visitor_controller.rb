class VisitorController < ApplicationController
  def index
    @visitor = Visitor.new
    
  end

  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(first_name: visitor_params[:first_name], last_name: visitor_params[:last_name], phone_number: visitor_params[:phone_number], email: visitor_params[:email], message: visitor_params[:message])
    a = is_known
      if @visitor.email.nil? 
      flash[:danger] = "Adresse email manquante"
      elsif a == 1
      flash[:danger] = "Adresse email déjà enregistrée"
      elsif @visitor.save
      flash[:success] = "Adresse e-mail enregistrée, vous recevrez l'actualité de Shomi prochainement"
      else
        flash[:danger] = "Adresse email invalide ou déjà enregistrée"
      end
   redirect_to root_path
  end

  def visitor_params
    params.require(:visitor).permit(:first_name,:last_name,:phone_number,:email,:message)
  end

  def is_known
    a = 0
    Visitor.all.each {|visitor| visitor.email == @visitor.email ? a = 1 : a = 0 }
    return a
  end

end
