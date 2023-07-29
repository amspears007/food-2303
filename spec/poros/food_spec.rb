require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attributes = {
      gtinUpc: "2626262626",
      description: "idaho potatoes",
      ingredients: "more regular potatoes",
      brandOwner: "Amy's Potatoes"
    }
    new_food = Food.new(attributes)
    # require 'pry'; binding.pry

    expect(new_food).to be_a(Food)
    expect(new_food.gtinupc).to eq("2626262626")
    expect(new_food.description).to eq("idaho potatoes")
    expect(new_food.ingredients).to eq("more regular potatoes")
    expect(new_food.brandowner).to eq("Amy's Potatoes")
    end
  end