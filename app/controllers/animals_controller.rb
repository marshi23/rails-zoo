class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id].to_i)
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.new(animal_params)

    if animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def not_found
    render :notfound
  end

  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end
