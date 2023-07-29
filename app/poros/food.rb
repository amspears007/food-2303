class Food
  attr_reader :gtinupc,
              :description,
              :ingredients,
              :brandowner

  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @ingredients = data[:ingredients]
    @brandowner = data[:brandOwner]
  end
end