class FoodService

  def food_by_name(food)    
    get_url("fdc/v1/foods/search?query=#{food}&pageSize=10&pageNumber=1")
  end 
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["api_key"]
    end
  end
end