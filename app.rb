require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name1/:name2" do
    @user_name = params[:name1, :name2]
    "Hello #{@user_name}!"
  end
  

  # Code your final two routes here:

end
