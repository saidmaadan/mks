class CookBook
	attr_accessor :title
  attr_reader :recipes

	def initialize(title)
		@title = title
    @recipes = []
	end

	def add_recipe(recipe)
    puts "Added a recipe to the collection: #{recipe.title}"
    @recipes << recipe
	end
  
  def recipe_titles
    @recipes.each do |recipe|
    puts "#{recipe.title}"
  end
  end
  
  def recipe_ingredients
    @recipes.each do |recipe|
    puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
  end
end

def print_recipe
  @recipes.each do |recipe|
    puts "We are going to cook #{recipe.title} with available ingredients #{recipe.ingredients.join(" and ")} will first #{recipe.steps.join(" and ")}"
  end
end

def print_cookbook(recipe)
  @recipes << recipe
    puts "We are going to cook #{recipe.title} with two available ingredients #{recipe.ingredients.join(",")} will first #{recipe.steps.join(",")}"
end
end

class Recipe
	attr_accessor :title, :ingredients, :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
  
	end