class VisitorsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    def mechanics
        if params[:location]    
            @mechanics = Mechanic.where("LOWER(location) = ?", params[:location])
        else
            @mechanics = Mechanic.all
        end
    end
end