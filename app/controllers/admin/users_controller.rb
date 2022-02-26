class Admin::UsersController < ApplicationController
	def new
		@user=User.new
	end
	def create
		@user=User.create(user_params)
		if @user.save
      flash[:success] = "Successfully Created account"
      redirect_to root_url
     else
      render "new"
     end
	end
	def index
		@users=User.all
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile Updated"
      redirect_to user_path
    else
      render 'edit'
    end
	end
	def destroy
	end
	private
    def user_params
      params.require(:user).permit(:name, :password, :license, :admin)
    end
end
