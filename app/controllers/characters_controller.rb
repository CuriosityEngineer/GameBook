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

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(params[:character].permit(:name))
      redirect_to @character
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_path
  end

  private
    def character_params
      params.require(:character).permit(:name)
    end

end
