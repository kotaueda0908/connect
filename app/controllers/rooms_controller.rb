class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def new
        @rooms = Room.new
    end

    def create
        @room = Room.new(room_params)
        if @room.save
            session[:room_id] = room.id
            redirect_to @room, notice:"ユーザー登録に成功"
        else
            render :new
        end
    end

    def show
        @room = Room.find(params[:id])
    end

    private

    def room_params
        params.require(:room).permit(:title, :password)
    end
end
