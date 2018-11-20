require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = "#{params[:word1]} " "#{params[:word2]} " "#{params[:word3]} " "#{params[:word4]} " "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    if operator == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s

    elsif operator == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s

    elsif operator == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s

    elsif operator == "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s

    end
  end

end
