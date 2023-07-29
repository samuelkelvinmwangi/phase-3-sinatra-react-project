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
    content_type :json
    data = JSON.parse(request.body.read)
    runner = Runner.create(data)
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
  get '/races' do
    content_type :json
    race = Race.find(params[:id])
    race.to_json
  end

  # create a new race
  post '/races' do
    content_type :json
    data = JSON.parse(request.body.read)
    race = Race.create(data)
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
