class CommentsController < ApplicationController

    def show
        @comment=Comment.find_by_id(params[:id])
    end


    def new 
        @comment=Comment.new(discussion_id: params[:discussion_id])
    end

    def create
        @comment=Comment.find_or_create_by(comment_params)
        redirect_to comment_path(@comment)
    end


    def edit
        @comment=Comment.find_by_id(params[:id])
    end


    def update
        @comment=Comment.find_by_id(params[:id])
        @comment.update(comment_params)
        redirect_to comment_path(@comment)
    end

    def delete
        @comment=Comment.find_by_id(:params[:id])
        @comment.destroy
        redirect_to discussion_path(@comment.discussion)
    end

    private

    def comment_params 
        params.require(:comment).permit(:write_comment, :discussion_id)
    end


end