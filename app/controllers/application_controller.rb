class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
    get "/services" do
    service =  Specialist.all
    service.to_json
  end

end
