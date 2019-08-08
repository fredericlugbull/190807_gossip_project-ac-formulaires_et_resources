class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end
  
  def new
    @gossip = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], :user => User.all.sample) 

    if @gossip.save # essaie de sauvegarder en base @gossip
      flash[:success] = 'The Gossip was successfully created'
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      render :new  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
  
  
  def show
    @gossip = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage 
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end


end
