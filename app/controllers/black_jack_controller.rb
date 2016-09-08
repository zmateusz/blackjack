class BlackJackController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def new
    black_jack_dealer = BlackJackDealer.new
    black_jack = BlackJack.create(dealer: black_jack_dealer)
    redirect_to black_jack
  end

  def show
    black_jack = BlackJack.find(params[:id])

    @player_score = black_jack.dealer.player_score
    @player_cards = black_jack.dealer.player_cards
    @dealer_score = black_jack.dealer.dealer_score_visible
    @dealer_cards = black_jack.dealer.dealer_cards_visible
    @message = black_jack.dealer.message
  end

  def hit
    black_jack = BlackJack.find(params[:id])
    black_jack.dealer.hit
    black_jack.save
    redirect_to black_jack
  end

  def stand
    black_jack = BlackJack.find(params[:id])
    black_jack.dealer.stand
    black_jack.save
    redirect_to black_jack
  end
end
