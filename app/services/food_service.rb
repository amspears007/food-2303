class FoodService

  def food_by_name(food)

    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["api_key"]
    end
    
    response = conn.get("fdc/v1/foods/search?query=#{food}&pageSize=10&pageNumber=1")
    @food_info = JSON.parse(response.body, symbolize_names: true)
  end 
end