class GenresController < ApplicationController

    before_action :find_genre, only: [:show, :edit, :update]
    
    def index
        @genres = Genre.all
    end    

    def show
		
	end

	def new
		@genre = Genre.new
	end

	def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
	end

	def edit
		
	end

	def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private

    def genre_params
        params.require(:genre).permit!
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end    
end