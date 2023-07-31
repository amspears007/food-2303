class FoodFacade
  # def initialize(food)
  #   @food = food
  # end
  #Don't need to initialize?

  def self.find_food(food)
    service = FoodService.food_by_name(food)[:foods]
    foods = service.map do |food_data|
      Food.new(food_data)
    end
  end

  def self.find_total_hits(food)
    results = FoodService.food_by_name(food)
    results[:totalHits]
  end
end