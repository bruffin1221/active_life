class RepliesController<ApplicationController
    before_action :require_login

def show
    @reply = Reply.find_by_id(params[:id])
end

def new
    @reply = Reply.new(comment_id: params[:comment_id])
end

def create 
    @reply = Reply.find_or_create_by(reply_params)
    redirect_to reply_path(@reply) 
end

def edit
    @reply = Reply.find_by_id(params[:id])
end

def update
    @reply = Reply.find_by_id(params[:id]) 
    @reply.update(reply_params)
    redirect_to reply_path(@reply)
end

def delete
    @reply=Reply.find_by_id(params[:id])
    @reply.destroy
    redirect_to comment_path(@reply.comment)
end

private

def reply_params
    params.require(:reply).permit(:write_reply, :comment_id)
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end