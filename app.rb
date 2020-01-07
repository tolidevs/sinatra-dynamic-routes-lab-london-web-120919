require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i ** 2
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @string = []
    @num.to_i.times do
      @string << @phrase
    end
    @string.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    case params[:operation]
    when "add"
      (@num1.to_i + @num2.to_i).to_s
    when "subtract"
      (@num1.to_i - @num2.to_i).to_s
    when "multiply"
      (@num1.to_i * @num2.to_i).to_s
    when "divide"
      (@num1.to_f / @num2.to_f).to_s
    else
      "I don't recognise that operation"
    end
  end

  # write above here
end