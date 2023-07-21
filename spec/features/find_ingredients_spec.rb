require "rails_helper"

RSpec.describe "Ingredient Search Page" do
  it "When I visit the page the user submits a valid state search" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_on "Search"
save_and_open_page
      expect(current_path).to eq(foods_path)
      expect(page).to have_content("SWEET POTATOES")
      expect(page).to have_content("NOT A BRANDED ITEM")
      expect(page).to have_content("ORGANIC SWEET POTATOES.")
      expect(page).to have_content("Found 10 search results for sweet potatoes")
      expect(page).to have_content("GTIN/UPC:")

  end
end
