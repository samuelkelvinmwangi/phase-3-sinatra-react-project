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

end
