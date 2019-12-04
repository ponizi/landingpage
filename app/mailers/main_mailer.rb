class MainMailer < ApplicationMailer
  default from: 'alexis@shomi.fr'
 
  def welcome_email(visitor)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @visitor = visitor 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "ponalexis@gmail.com", subject: 'Shomi - Nouveau lead - Abonnements') 
  end
  
  def business_email(business)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @business = business 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "ponalexis@gmail.com", subject: 'Shomi - Nouveau lead - Business') 
  end

  def gaming_email(gaming)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @gaming = gaming 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "ponalexis@gmail.com", subject: 'Shomi - Nouveau lead - Gaming') 
  end

  def newspaper_email(newspaper)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @newspaper = newspaper 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "ponalexis@gmail.com", subject: 'Shomi - Nouveau lead - Journaux') 
  end


end
