class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @show_animal = Animal.find(params[:id])
  end

  def create
    @animal = Animal.create animal_params
    unless @animal.id == nil
      redirect_to animals_path
    end
  end

  def new
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    if animal.update(book_params)
      redirect_to animal_path
    end
  end

  def destroy
    animal.destroy(params[:id])
    redirect_to animal_path
  end


  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :info, :says)
  end

end
