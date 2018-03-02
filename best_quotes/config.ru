require './config/application'

app = BestQuotes::Application.new

use Rack::ContentType

app.route do
  match "/", "quotes#index"
end

run app

# map '/' do
#   run QuotesController.action(:index)
# end

# run BestQuotes::Application.new