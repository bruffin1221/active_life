class RepliesController<ApplicationController
    before_action :require_login

def show
    @reply = Reply.find_by_id(params[:id])
end

def new
    @reply = Reply.new(comment_id: params[:comment_id])
end

def create 
    @reply = Reply.new(reply_params)
    @reply.save
    @reply.update(personal_profile_id: current_user.id)
    redirect_to reply_path(@reply) 
end

def edit
    @reply = Reply.find_by_id(params[:id])
    if current_user.id!=@reply.personal_profile_id || current_user.replies.nil?
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
    end
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