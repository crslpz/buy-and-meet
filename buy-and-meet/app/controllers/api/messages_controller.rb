class Api::MessagesController < ApplicationController

   before_action do
    ensure_logged_in!
    @conversation = Conversation.find(params[:conversation_id])
   end

    def create
        @message = @conversation.messages.new
        if @message.save
            redirect_to conversation_messages_path(@conversation)
        end
    end

    def index
        @messages = @messages = @conversation.messages
        @message = @conversation.messages.new
    end

    def new
        @message = @conversation.messages.new
    end

    private
    def message_params
        params.require(:message).permit(:body, :user_id, :conversation_id)
    end
end
