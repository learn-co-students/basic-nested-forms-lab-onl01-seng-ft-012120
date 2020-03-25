class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  def recipe_id=(id)
    self.recipe = Recipe.find_or_create_by(id: self.recipe_id)
  end

  # def recipe_title=(title)
  #   self.recipe = Recipe.find_or_create_by(title: title)
  # end

  def recipe_id
    self.recipe ? self.recipe_id : nil 
  end
end
