class ArtistListController < ApplicationController
  def index
    @artist=Artist.all
  end
end
