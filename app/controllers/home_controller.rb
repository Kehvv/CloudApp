class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'
  	
  
  	@url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=cce65e50-1c57-4d55-a23d-4d5744c6a1e8&start=1&limit=5000&convert=USD'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@coins = JSON.parse(@response)
  	@my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM",]

	
  end

  def about
  end

  def lookup
  	require 'net/http'
  	require 'json'
  	@url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=cce65e50-1c57-4d55-a23d-4d5744c6a1e8&start=1&limit=5000&convert=USD'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@lookup_coin = JSON.parse(@response)

  	@symbol = params[:sym]
  	if @symbol
  		@symbol = @symbol.upcase
  	end

  	if @symbol	== ""
  		@symbol = "Nothing Entered in form!"
	end
  end 

end