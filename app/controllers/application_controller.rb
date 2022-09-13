class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/" do
        { message: "Backend up and running!" }.to_json
      end
    
end