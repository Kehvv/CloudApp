class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN&api_key={73700d20cab257ca1696d80644bb6430f8857b022480989a3a3ddb625505b6c3}'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)
  

	
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