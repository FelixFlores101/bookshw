class BooksController < ApplicationController
    def index
        render json: { books: Book.where("author_id = ?",params[:author_id])}
    end

    def show
        id = params[:id]
        render json: { book: Book.find(id)}
end

    def create
        book = Book.create! book_params
        render json: { book: book }
    end

    def update
        id = params[:id]
        author = Book.find(id)
        if book.update(book_params)
        render json: { book: book}
        end
    end
    
    def destroy
        id = params[:id]
        book = Book.find(id)
        if book.destroy
            render json: { message:"Book is deleted"}
        else
            render json: { message:"Error in deleting the book"}
        end

    end

    private
    def book_params
        params.require(:book).permit(:title, :author_id)
    end

end

