require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:greeter/:greetee" do
    @greeter = params[:greeter]
    @greetee = params[:greetee]
    "Hello #{@greetee}! I'm #{@greeter}."
  end
  
  get '/goodbye/:name'do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
end
  # Code your final two routes here:
  get "/multiply/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @product = @number1 * @number2
    "#{@number1} * #{@number2} = #{@product}"
end
end
