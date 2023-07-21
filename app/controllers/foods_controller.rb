class FoodsController < ApplicationController
  def index
    
    @food = params[:q]
    
    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["api_key"]
    end
    
    response = conn.get("fdc/v1/foods/search?query=#{@food}&pageSize=10&pageNumber=1")
    @food_info = JSON.parse(response.body, symbolize_names: true)[:foods]
    
    # require 'pry'; binding.pry
  end
end