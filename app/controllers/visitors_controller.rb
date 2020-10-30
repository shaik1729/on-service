class VisitorsController < ApplicationController
    before_action :authenticate_user!, only: [:user_display_loc_map, :admin]
    before_action :authenticate_mechanic!, only: [:mechanic_profile]
    before_action :check_mechanic_role, only: [:mechanic_profile]
    before_action :check_user_role, only: [:user_display_loc_map]
    before_action :check_admin_role, only: [:admin]

    def index
        if current_user&.admin?
            redirect_to '/admin'
        elsif current_user.class.name == 'User'
            redirect_to '/user_display_loc_map'
        elsif current_mechanic.class.name == 'Mechanic'
            redirect_to '/mechanic_profile'
        end 
    end

    def user_display_loc_map
        @markers = Mechanic.all.collect{|m|
            {
                coords: { lat: m.latitude, lng: m.longitude },
                content: "<h1>Name : #{m.name}</h1><p>contact number : #{m.mobile_number}</p>"
            }
        }
    end

    def mechanic_profile

    end

    private

    def check_mechanic_role
        redirect_to '/' unless current_mechanic
    end

    def check_user_role
        redirect_to '/' unless current_user
    end

    def check_admin_role
        redirect_to '/' unless current_user.admin?
    end
end