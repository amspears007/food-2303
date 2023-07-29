class FoodFacade
  def initialize(food)
    @food = food
  end

  def find_food
  # @food = params[:q]
    
    # conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
    #   faraday.headers["X-Api-Key"] = ENV["api_key"]
    # end
    
    # response = conn.get("fdc/v1/foods/search?query=#{@food}&pageSize=10&pageNumber=1")
    # @food_info = JSON.parse(response.body, symbolize_names: true)
    service = FoodService.new
    json = service.food_by_name(@food)
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
# require 'pry'; binAdd foodding.pry
  end

end