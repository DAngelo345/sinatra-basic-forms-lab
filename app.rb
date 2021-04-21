require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do

        erb :'//index'
    end

    get '/new' do 
       

        erb :'create_puppy'
    end
    
    post '/puppy' do
        pname = params[:name]
        pbreed = params[:breed]
        page = params[:age]
        # binding.pry
        @puppy = Puppy.new(pname, pbreed, page)
       
    


        erb :'display_puppy'
    end

end
