class IdeasController < ApplicationController
    def index
        @ideas = Idea.all
    end

    def new
        @idea = Idea.new
    end

    def create
        @idea = Idea.new(idea_params)

        if @idea.save
            flash.notice = "Idea created!"
            redirect_to ideas_path
        else
            flash.alert = "Something went wrong."
            render :new
        end
    end

    def update
        @idea = Idea.find(params[:id])

        if @idea.update(idea_params)
            flash.notice = "Idea updated!"
            redirect_to ideas_path
        else
            flash.alert = "Something went wrong."
            render :edit
        end
    end

    def show
        @idea = Idea.find(params[:id])
    end

    def edit
        @idea = Idea.find(params[:id])
    end

    def destroy
        @idea = Idea.find(params[:id])

        if @idea.destroy
            flash.notice = "Idea deleted!"
            redirect_to ideas_path
        else
            flash.alert = "Cound not delete Idea"
            redirect_to ideas_path
        end
    end

    private

        def idea_params
            params.require(:idea).permit(
                :title,
                :discription,
                :target,
                :market,
                :help,
                :keyword
            )
        end

end