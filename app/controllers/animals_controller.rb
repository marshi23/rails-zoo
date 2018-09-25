class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id].to_i)

  end

  def record_not_found
    render :notfound
  end
end
