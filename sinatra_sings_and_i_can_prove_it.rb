require 'sinatra'

get "/" do
  "Singing the #{params[:tune_title]} tune loud and clear"
end
