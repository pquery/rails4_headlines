module Api
 class NewsController < Api::BaseController

 private 

   def news_params
     params.require(:news).permit(:title)
   end

   def query_params
     # this assumes that a news article hase an author and has an :author_id
     # and we can then filter by this
     params.permit(:author_id, :title)
   end 

  end

  def index
    @news = ::News.all
    #respond_to do |format|
    #    format.json
    end
  end
end