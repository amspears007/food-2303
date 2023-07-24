class FoodsController < ApplicationController
  def index
    
    @food = params[:q]
    
    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["api_key"]
    end
    
    # response = conn.get("fdc/v1/foods/search?query=#{@food}")
    # @food_info = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry


    response = conn.get("fdc/v1/foods/search?query=#{@food}&pageSize=10&pageNumber=1")
    @food_info = JSON.parse(response.body, symbolize_names: true)[:foods]


    # @food_info.each do |food|
    #   id_response = conn.get("fdc/v1/food/#{food[:fdcId]}?nutrients=203&nutrients=204&nutrients=205")
    #   @food_id = JSON.parse(id_response.body, symbolize_names: true)
    # end

# require 'pry'; binding.pry

    # @food_info.each do |food|
    #   @id = food[:fdcId]
      
    #   id_response = conn.get("fdc/v1/food/#{@id}?nutrients=203&nutrients=204&nutrients=205")
    #   @food_id = JSON.parse(id_response.body, symbolize_names: true)
    
    # require 'pry'; binding.pry
  end
end