require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # USER ACTIONS

  # lister toutes les recettes
  def list
    # les recettes sont dans le repo
    recipes = @cookbook.all # un array d'instance de toutes les recettes
    # les envoyer dans la view pour les afficher
    @view.display_all_recipes(recipes)
  end
  # Ajouter des recettes (add)
  def add
    name = @view.ask_user_for("name") # récupérer la string donner par un user
    description = @view.ask_user_for("description")
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end
  # supprimer des recettes (remove)
  def remove
    # j'ai un array de recette => j'ai besoin d'un index ?
    # le user
    recipes = @cookbook.all
    p recipes
    index = @view.ask_user_for_index
    # l'envoyer au repo pour la suppression
    @cookbook.destroy(index)
  end
end