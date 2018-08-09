class UserController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    
    def index
    end
    
    def edit
    end
    
    def show
    end
    
    def update
    end
    
    private
    
       def set_user
           @user = User.find(params[:id])
       end
       
       def user_params
          params.require(:user).permit(:name, :pan, :contact, :tax_status_id)
        end
end
