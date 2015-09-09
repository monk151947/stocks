require 'sinatra'
require  "stock_quote"
require 'json'


get '/' do
  "Hello, world"
end

get '/:symbol' do
content_type :json
stocks = StockQuote::Stock.json_quote(params[:symbol])
return stocks.to_json
end   	