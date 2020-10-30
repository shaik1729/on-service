class MechanicsController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_only
  
    def destroy
      mechanic = Mechanic.find(params[:id])
      mechanic.destroy
      redirect_to '/admin', :notice => "Mechanic deleted."
    end
  
    private
  
    def admin_only
      unless current_user.admin?
        redirect_to root_path, :alert => "Access denied."
      end
    end  
  end
  