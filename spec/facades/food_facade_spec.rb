require "rails_helper"

RSpec.describe FoodFacade do
  describe "can find food object by search" do
    it "returns and array of food" do
      food_keyword = "sweet potatoes"
      food_facade = FoodFacade.find_food(food_keyword)
# require 'pry'; binding.pry
      expect(food_facade).to be_an(Array)
      expect(food_facade.count).to eq(10)
    end

    it "returns the total amount of hits of searched item" do
      food_keyword = "sweet potatoes"
      keyword_hits = FoodFacade.find_total_hits(food_keyword)
      expect(keyword_hits).to eq(55579)
    end
  end
end