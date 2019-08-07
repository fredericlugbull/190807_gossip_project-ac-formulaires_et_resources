class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end
  
  def new
  end

  def create
    @gossip = Gossip.new() # avec xxx qui sont les données obtenues à partir du formulaire
    redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site

    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end


end
