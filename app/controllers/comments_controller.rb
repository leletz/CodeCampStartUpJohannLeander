class CommentsController< ApplicationController
    def create
        @idea = Idea.find(params[:idea_id])
        @comment = @idea.comments.new (comment_params)
        if @comment.save
            flash.notice = "Comment saved"
            redirect_to idea_path(@idea)
        else
            flash.alert = "Something went wrong"
            redirect_to idea_path(@idea)
        end
    end

    private
        def comment_params
            params.require(:comment).permit(
                :text,
                :name,
                :email,
                :reference
            )
        end  
end