class View
    # d'une méthode pour display mes recipes
    def display_all_recipes(recipes)
        recipes.each do |recipe|
            puts "#{recipe.name} - #{recipe.description}"
        end
    end

    def ask_user_for(stuff)
        puts "Which #{stuff} ?"
        gets.chomp
    end
    def ask_user_for_index
        puts "Which index ?"
        gets.chomp.to_i
    end
end
