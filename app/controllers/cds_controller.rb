class CdsController < ApplicationController
  def top
    @cd = Cd.all
  end

  def index
    @cd = Cd.all
  end

  def index_genre
  end

  def show
    @cd = Cd.find(params[:id])
  end

  def update
  end

end
