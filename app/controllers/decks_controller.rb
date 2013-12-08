class DecksController < ApplicationController
  def index # We refer to this index method as an action
    @decks = Deck.all # This is an instance variable. 
    # If you have an instance variable in your controller
    # you will have one in your view sharing the same name.
  end
  
  def show 
    @deck = Deck.find(params[:id])
  end

  def new
  	@deck = Deck.new
  end

  def create
  	@deck = Deck.new(params[:deck])
  	@deck.save
  	redirect_to "/decks"
  end

  def edit
  	@deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to "/decks/#{@deck.id}"
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to "/decks"
  end


end