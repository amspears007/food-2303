class FoodService
  # def initialize(food)
  #   @food = food
  # end

  def self.food_by_name(food)    
    get_url("fdc/v1/foods/search?query=#{food}")
  end 
  
  def self.get_url(url)
    response = conn.get(url)
     JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      # faraday.headers["X-Api-Key"] = ENV["api_key"]

      faraday.params["api_key"] = ENV["api_key"]
      faraday.params["pageSize"] = 10 
      # farada.params["query"] = @food
      #passing in params of 10 per page instead of the default of 50
      #can pass in query params if instantiated?
    end
  end
end