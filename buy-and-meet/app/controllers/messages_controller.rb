class Api::MessagesController < ApplicationController
   before_action do
      @conversation = Conversation.find(params[:conversation_id])
   end

    def create

    end

    def destroy
    
    end

    def index

    end

    def update

    end

    private
    def message_params
        params.require(:message).permit
    end
end
