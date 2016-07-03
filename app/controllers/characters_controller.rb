class CharactersController < ApplicationController
  # this is to check if user has permision to go to the  pages
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
  end
  
end
