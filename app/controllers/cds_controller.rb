class CdsController < ApplicationController
  def top
    @cd = Cd.all
    @artist = Artist.all
  end

  def index
  end

  def index_genre
  end

  def show
  end

  def update
  end
end
