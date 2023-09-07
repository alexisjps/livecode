class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

first_recipe = Recipe.new('mangue', 'Super fruit')

