class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/comics" do
    comics = Comic.all
    comics.to_json
  end
  
  get "/characters" do
    characters = Character.all
    characters.to_json
  end

end
