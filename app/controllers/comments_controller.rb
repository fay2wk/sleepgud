class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end


  def create
    @wiki = Wiki.find(params[:wiki_id])
    @comment = @wiki.comments.create(params[:comment].permit(:name, :body))

    redirect_to wiki_path(@wiki)
  end

  def destroy
    @wiki = Wiki.find(params[:wiki_id])
    @comment = @wiki.comments.find(params[:id])
    @comment.destroy

    redirect_to wiki_path(@wiki)
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
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_name, :text)
    end
end
