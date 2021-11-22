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
            flash.notice = "Das hat geklappt!"
            redirect_to ideas_path
        else
            flash.alert = "FEHLER!!!"
            render :new
        end
    end

    def update
        @idea = Idea.find(params[:id])
    end

    def idea_params
        params.require(:idea).permit(
            :title,
            :discription,
            :target,
            :market,
            :help,
            :keywords
        )
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
            flash.notice = "Idee gelöscht!"
            redirect_to ideas_path
        else
            flash.alert = "Cound not delete Idea"
            redirect_to ideas_path
        end
    end

end