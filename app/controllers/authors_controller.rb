class AuthorsController < ApplicationController
    def index
        render json: { authors: Author.all }
end

    def show
        render json: { author: Author.find(params[:id])}
    end

    def create
        new_author = Author.new(author_params)
        if new_author.save
            render json: { author: new_author }
        else
            render json: { message: 'Error'}
        end
    end

    def update 
        author = Author.find(params[:id])
        if author.update(author_params)
            render json: { author: author }
        else
            render json: { message: 'Error' }
        end
    end

    def destroy
        author = Author.find(params[:id])
        if author.destroy
            render json: { message: "Author #{params[:id]} delete"}
        else
            render json: { message: "Error" }
        end
    end

    private
    def author_params
        params.permit(
            :name_first,
            :name_last
        )
    end
end
