class ApplicationController < ActionController::Base
    def logged_in?
        !!session[:room_id]
    end

    def current_room
        return unless session[:room_id]
        @current_room ||= Room.find(session[:room_id])
    end
end
