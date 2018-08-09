class UserController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    
    def index
    end
    
    def edit
    end
    
    def show
    end
    
    
    def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, notice:  @user.errors.messages}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
    
    private
    
       def set_user
           @user = User.find(params[:id])
       end
       
       def user_params
          params.require(:user).permit(:name, :pan, :contact, :tax_status_id)
        end
end
