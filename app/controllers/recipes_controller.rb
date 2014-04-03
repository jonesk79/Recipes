class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def create
    @recipe = Recipe.new(:name => params[:name])
    if @recipe.save
      flash[:notice] = "Your recipe was successfully added."
      redirect('/recipes/#{recipe.id}')
    else
      render('recipes/new.html.erb')
    end
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(:name => params[:name])
      render('recipes/success.html.erb')
    else
      render('recipes/edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render('recipes/destroy.html.erb')
  end
end
