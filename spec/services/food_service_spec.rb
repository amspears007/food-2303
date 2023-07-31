require 'rails_helper'

RSpec.describe FoodService do
  describe "it call the api and returns food data" do
    it "searches for food keyword" do

      food_keyword = "sweet potatoes"
        results = FoodService.food_by_name(food_keyword)

        expect(results).to be_a(Hash)
        expect(results).to have_key(:totalHits)
        expect(results).to have_key(:foodSearchCriteria)
        expect(results).to have_key(:foods)
        expect(results[:foods]).to be_an(Array)
        expect(results[:foods].count).to eq(10)
    end
  end
end