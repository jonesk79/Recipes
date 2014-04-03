class TagsController < ApplicationController
  def new
    recipe = Recipe.find(param[:recipes_id])
    @tags = recipe.tags.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(:name => params[:name],
                   :recipes_id => params[:recipes_id])
    if @tag.save
      render('tags/success.html.erb')
    else
      render('tags/new.html.erb')
    end
  end
end
