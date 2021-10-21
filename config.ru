require 'sinatra'

class App < Sinatra::Base

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    {result: sum}.to_json
  end

# Code above is dynamic version of code below

  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end 
  
end

run App
