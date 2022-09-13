class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    # selects and displays all the users in the database
    get "/users" do
      user = User.all
      user.to_json
    end

    # selects and displays all the transactions in the database
    get "/transactions" do 
      transactions= Transaction.all
      transactions.to_json
    end

    # adds a new transaction to the database
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

    # adds a new user to the database
    post "/users" do 
      user = User.create(
        name: params[:name],
      )
      user.to_json
    end

    # updates an exisitng transaction retrieved by its id
    patch "/transactions/:id" do 
      transaction = Transaction.find(params[:id])
      transaction.update(
        date: params[:date],
        description: params[:description],
        amount: params[:amount],
        category: params[:category],
        user_id: 1
      )
      transaction.to_json
    end

    # updates an exisiting user retrieved by its id 
    patch "/users/:id" do 
      user = User.find(params[:id])
      user.update(
        name: params[:name],
      )
      user.to_json
    end

    # deletes a transaction retrieved by its id
    delete '/transactions/:id' do 
      transaction = Transaction.find(params[:id])
      transaction.destroy
      transaction.to_json
    end

    # deletes a user retrieved by its id
    delete '/user:id' do 
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end

end