class DecksController < ApplicationController
  before_filter :authenticate
  def index # We refer to this index method as an action
    @decks = current_user.decks # This is an instance variable. 
    # If you have an instance variable in your controller
    # you will have one in your view sharing the same name.
  end
  
  def show 
    @deck = find_deck
    @cards = @deck.cards
  end

  def new
  	@deck = current_user.decks.new
  end

  def create
  	@deck = current_user.deck.new(params[:deck])
  	@deck.save
  	redirect_to decks_path
  #  redirect_to @decks <--- This didn't work.
  end

  def edit
  	@deck = find_deck
  end

  def update
    @deck = find_deck
    @deck.update_attributes(params[:deck])
    redirect_to @deck
  end

  def destroy
    @deck = find_deck
    @deck.destroy
    redirect_to decks_path
  end

  private

  def find_deck
    current_user.decks.find(params[:id])
  end



end