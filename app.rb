require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = (@number**2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @words = [@word1, @word2, @word3, @word4, @word5]
    (@words * " ") + "."
  end

  get '/:operation/:number1/:number2' do
    add = +
    @op = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    
    @number1 @op @number2
  end


end