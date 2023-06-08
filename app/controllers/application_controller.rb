class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/cities" do
    cities = City.all
    cities.to_json
  end
  
  get "/cities/:id" do
    city = City.find(params[:id])
    city.to_json
  end

  post "/cities" do
    city = City.new(params)
    if city.save
      status 201
      city.to_json
    else
      status 400
      { error: "Invalid city data" }.to_json
    end
  end
  
  patch "/cities/:id" do
    city = City.find(params[:id])
    if city.update(params)
      city.to_json
    else
      status 400
      { error: "Invalid city data" }.to_json
    end
  end

  delete "/cities/:id" do
    city = City.find(params[:id])
    city.destroy
    status 204
  end
  
  post "/cities/:city_id/weathers" do
    city = City.find(params[:city_id])
    weather = city.weathers.new(params)
    if weather.save
      status 201
      weather.to_json
    else
      status 400
      { error: "Invalid weather data" }.to_json
    end
  end
  
  patch "/weathers/:id" do
    weather = Weather.find(params[:id])
    if weather.update(params)
      weather.to_json
    else
      status 400
      { error: "Invalid weather data" }.to_json
    end
  end

  delete "/weathers/:id" do
    weather = Weather.find(params[:id])
    weather.destroy
    status 204
  end

end
