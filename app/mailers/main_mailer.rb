class MainMailer < ApplicationMailer
  default from: 'alexis@shomi.fr'
 
  def welcome_email(visitor)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @visitor = visitor 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "ponalexis@gmail.com", subject: 'Shomi - Nouveau lead') 
  end
end
