class CharactersController < ApplicationController
  # this is to check if user has permision to go to the  pages
  before_action :authenticate_user!, except: [:index, :show, :new]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  private
    def character_params
      params.require(:characters).permit(:name)
    end

end
