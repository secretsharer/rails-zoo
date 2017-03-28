class AnimalsController < ApplicationController

  # def animal_params
  #   # animal_params = Animal.new
  #    { name: nil, species: nil, age: nil, says: nil, info: nil }
  # end

  def index
    @animals = Animal.all
  end

  def show
    @show_animal = Animal.find(params[:id])
  end

  def create
    @animal = Animal.create animal_params
    if @animal.save
      # unless @animal.id == nil
      redirect_to animals_path
    else
      render :new
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
    if animal.update(animal_params)
      animal.save
      redirect_to animals_path
    end
  end

  def destroy
    animal.destroy(params[:id])
    if animal.destroy
      redirect_to animals_path
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :info, :says)
  end

end
