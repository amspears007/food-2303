require "rails_helper"

RSpec.describe "Ingredient Search Page" do
  it "When I visi the page the user submits a valid state search" do
    visit "/"

    fill_in "q", with: "sweet potatoes"
      click_on "Search"

      expect(current_path).to eq(ingredient_search_results_path)
      expect(page).to have_content("SWEET POTATOES")
      expect(page).to have_content("NOT A BRANDED ITEM")
      expect(page).to have_content("ORGANIC SWEET POTATOES.")
      expect(page).to have_content("Search Results for 'sweet potatoes'")
  end
end
