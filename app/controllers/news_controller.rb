class NewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource
  before_action :set_news, only: [:show, :edit, :update, :destroy, :publish]
  
  # GET /news
  # GET /news.json
  def index
    @news = News.all
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  def publish
    @news.update(published_at: Time.zone.now)
  end 

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      updated_params = params.require(:news).permit(:title, :news, :pic1, :user_id)
      # Force user_id to current_user.id unless current_user is an admin
      # This will force a user id should one not be passed in.
      # Since our ability class blocks users from editing other user stories, any user
      # trying to take over another users' story they would be blocked.
      updated_params[:user_id] = current_user.id unless current_user.role == 'admin'
      return updated_params
    end
end
