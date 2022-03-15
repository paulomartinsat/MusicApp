class AlbumsController < ApplicationController
    before_action :require_user_logged_in!
    before_action :set_album, only: %i[show edit update destroy]
    def index
        @albums = Album.all
    end
    def new
        @album=Album.new
    end
    def post_here
        @album = Album.new(artist_id: 123421)
    end

    def create
        @album=Album.new(album_params)
        if @album.save!
            #saves album created
            
            redirect_to albums_path, notice: "Sucessfully created an album!"
        else
            redirect_to albums_path, notice: "Impossible to create an album!"
        end
    end
    def edit
    end
    def update
        if @album.update album_params
            redirect_to album_path, notice: "Album updated sucessfully!"
        else
            redirect_to album_path, notice: "Error doing album update!"
        end   
    end

    def show 
    end
    
    def destroy
        @album.destroy
        redirect_to albums_path, notice: "Album was successfully deleted." 
        
    end

    private
    def album_params
        params.require(:album).permit(:artist_id, :album_name, :year)
    end

    def set_album
        @album = Album.find(params[:id])
    end
end





