require_relative 'cookbook.rb'

mex_cuisine = CookBook.new("African Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
african = Recipe.new("Egusi Soup", ["Mellon", "Tomatoes", "Maggi"], ["boil mellon in hot water", "add tomatoes and maggi", "after 10mins, will stir it"])


p "-----****************************---------"
mex_cuisine.recipes
puts mex_cuisine.title
puts african.title
p african.ingredients
p african.steps


p "-----****************************---------"
mex_cuisine.recipes
mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title
puts burrito.title
p burrito.ingredients
p burrito.steps


p "-----****************************---------"
mex_cuisine.recipes
puts mex_cuisine.title

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title
p burrito.ingredients
p burrito.steps
p "-----****************************---------"
mex_cuisine.recipes
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes

p "*******************************************"
mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients

p "*******************************************"
mex_cuisine.print_recipe

p "*******************************************"

mex_cuisine.print_cookbook(african)
p "-----------"
mex_cuisine.print_cookbook(burrito)