class CharactersController < ApplicationController
  # this is to check if user has permision to go to the  pages
  before_action :authenticate_user!, except: [:index, :show, :new]

  def index
    @characters = Character.all
  end

  def new
  end

  def create
    @character = Character.new(character_params)
    @character.save

    redirect_to @character
  end

  def show
    @character = Character.find(params[:id])
  end

  private
    def character_params
      params.require(:characters).permit(:name)
    end

end
