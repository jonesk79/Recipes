class TagsController < ApplicationController
  def new
    recipe = Recipe.find(params[:recipes_id])
    @tags = recipe.tags.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(:name => params[:name])
    if @tag.save
      flash[:notice] = "Your tag was successfully added."
      redirect('/tags/#{tags.id}')
    else
      render('tags/new.html.erb')
    end
  end
end
