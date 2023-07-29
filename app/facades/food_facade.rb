class FoodFacade
  def initialize(food)
    @food = food
  end

  def find_food
    service = FoodService.new
    json = service.food_by_name(@food)
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

end