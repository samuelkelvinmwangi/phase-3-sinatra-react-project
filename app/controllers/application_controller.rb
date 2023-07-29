class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #  Routes for the Runner model
  get '/runners' do
    content_type :json
    runners = Runner.all
    runners.to_json
  end

  # Get a specific runner
  get '/runners/:id' do
  content_type :json
  runner = Runner.find(params[:id])
  runner.to_json
  end
  
  # create a new runner
  post '/runners' do
    runner = Runner.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    runner.to_json
  end

  # Delete a runner
  delete '/runners/:id' do
    content_type :json
    runner = Runner.find(params[:id])
    runner.destroy
    { message: 'Runner deleted successfully' }.to_json
  end

  # Routes for race model
  # get all races
  get '/races' do
    content_type :json
    races = Race.all
    races.to_json
  end

  # get a specific race
  get '/races/:id' do
    content_type :json
    race = Race.find(params[:id])
    race.to_json
  end

  # create a new race
  post '/races' do
    race = Race.create(
      name: params[:name],
      distance: params[:distance],
      runner_id: params[:runner_id]
    )
    race.to_json
  end

  # delete a race
  delete '/race/:id' do
    content_type :json
    race = Race.find(params[:id])
    race.destroy
    {message: 'Race deleted successfully'}.to_json
  end

end
