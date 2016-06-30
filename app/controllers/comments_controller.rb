class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update]
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end


  def create
    @wiki = Wiki.find(params[:wiki_id])
    @comment = @wiki.comments.create(params[:comment].permit(:user_name, :text))

    redirect_to wiki_path(@wiki)
  end

  def destroy
    redirect_to test_path
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment

    wiki = Wiki.find(params[:wiki_id])
    @comment = wiki.comments.find(params[:id])
  end
    # Never trust parameters from the scary internet, only allow the white list through.
end
