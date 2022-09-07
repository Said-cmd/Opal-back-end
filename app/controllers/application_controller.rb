class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/" do
        { message: "Back-end" }.to_json
      end
    
end