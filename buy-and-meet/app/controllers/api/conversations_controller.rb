class Api::ConversationsController < ApplicationController
    before_action :ensure_logged_in!

    def index
        @users = User.all
        @conversations = Conversation.all
    end

    def create  
        if Conversation.between(params[:sender_id], params[:recipient_id]).presencont? 
        @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
        else
        @conversation = Conversation.create!(conversation_params)
        end
        redirect_to conversation_messages_path(@conversation)
    end

    def destroy
        @conversation = Conversation.find(params[:id])

        if @conversation.destroy
            render
        else
            render json: ["Conversation was not deleted"], status: 401
        end
    end

    private
    def conversation_params
        params.require(:conversation).permit(:sender_id, :recipient_id)
    end

end
