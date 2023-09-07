require_relative 'recipe'
require 'csv'

class Cookbook
  def initialize(csv_file)
    @recipes = [] # toutes les instances de nos recettes
    @csv_file = csv_file # c'est équel au chemin du CSV
    load_csv
  end

  # lister toutes les recettes
  def all
    return @recipes
  end
  # Ajouter des recettes (add)
  def create(recipe)
    @recipes << recipe
    # j'ai besoin de save dans ma DB #csv
    save
  end
  # supprimer des recettes (remove)
  def destroy(index)
    @recipes.delete_at(index - 1)
    save
  end
  # avoir une méthode qui permet de loader les données du csv
  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
        @recipes.each do |recipe|
           csv << [recipe.name, recipe.description]
        end
    end
  end

end