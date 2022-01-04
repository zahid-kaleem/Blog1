class ArticlesController < ActionController::Base

    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new
        @article.inspect    

    end
    def create
       
        #render plain: params[:article].inspect
        @article = Article.new (article_params)
        if @article.save
            flash[:notice] = "Article was successfully saved"
            redirect_to root_path(@article)

        else
            render "new"
        end
    end
    def show 
        
        @article = Article.find(params[:id])
        
    end

    def edit
        
        @article = Article.find(params[:id])
    end
    def update
        @article = Article.new(article_params)
        if @article.save
            redirect_to articles_path
        end
        
    end


    
    private 
    def article_params
        params.require(:article).permit(:title,:description)
    end
    
end