require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    i = params[:user_text]
    @analyzed_text = TextAnalyzer.new(i)
    erb :results
  end
end
