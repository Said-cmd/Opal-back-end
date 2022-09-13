class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/" do
        { message: "Backend up and running!" }.to_json
      end

    get "/transactions" do 
      transactions= Transaction.all
      transactions.to_json
    end

    post "/transactions" do 
      transaction = Transaction.create(
        date: params[:date],
        description: params[:description],
        amount: params[:amount],
        category: params[:category],
        user_id: 1
      )
      transaction.to_json
    end

    patch "/transactions/:id" do 
      transaction = Transaction.find(params[:id])
      transaction.update(
        date: params[:date],
        description: params[:description],
        amount: params[:amount],
        category: params[:category]
        user_id: 1
      )
      transaction.to_json
    end

    delete '/transactions/:id' do 
      transaction = Transaction.find(params[:id])
      transaction.destroy
      transaction.to_json
    end
end