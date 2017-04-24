class CommentsController < ApplicationController
  before_action :set_video_request_comment, only: [:show, :edit, :update, :destroy]

  # GET /video_request_comments
  # GET /video_request_comments.json
  def index
    @video_request_comments = VideoRequest::Comment.all
  end

  # GET /video_request_comments/1
  # GET /video_request_comments/1.json
  def show
  end

  # GET /video_request_comments/new
  def new
    @video_request_comment = VideoRequest::Comment.new
  end

  # GET /video_request_comments/1/edit
  def edit
  end

  # POST /video_request_comments
  # POST /video_request_comments.json
  def create
    @video_request_comment = VideoRequest::Comment.new(
      video_request_comment_params.merge(video_request_id: params['id'], user_id: current_user.id)
    )
    respond_to do |format|
      if @video_request_comment.save
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @video_request_comment }
      else
        format.html { render :new }
        format.json { render json: @video_request_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_request_comments/1
  # PATCH/PUT /video_request_comments/1.json
  def update
    respond_to do |format|
      if @video_request_comment.update(video_request_comment_params)
        format.html { redirect_to @video_request_comment, notice: 'Video request comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_request_comment }
      else
        format.html { render :edit }
        format.json { render json: @video_request_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_request_comments/1
  # DELETE /video_request_comments/1.json
  def destroy
    @video_request_comment.destroy
    respond_to do |format|
      format.html { redirect_to video_request_comments_url, notice: 'Video request comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_request_comment
      @video_request_comment = VideoRequestComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_request_comment_params
      params.require(:video_request_comment).permit(:value)
    end
end
