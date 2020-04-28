class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    # This is to save article to database
    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to @article
    end

    private
        # This function is passed in to create new Article
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
