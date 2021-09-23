class ArtistsController < ApplicationController
    before_action :require_user_logged_in!
    def index
        @artists=Artist.all
    end
end
