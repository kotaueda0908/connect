class RoomsController < ApplicationController
    def index
        @rooms = Room.all.order(:id)
    end

    def new
        @rooms = Room.new
    end

    def create
        @room = Room.new(room_params)
        @room.save
        redirect_to rooms_path
    end

    def show
        @room = Room.find(params[:id])
        @messages = @room.messages
    end


    private

    def room_params
        params.require(:room).permit(:title, :password)
    end
end
