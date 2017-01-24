class UsersController < ApplicationController
  	before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]
  	before_action :is_admin


	def index
		@titre = t('admin.titre_utilisateurs')
		@users = User.all
	end

	def new 
		@titre = t('admin.nouvel_utilisateur')
		@user = User.new
	end

	def edit
		@titre = t('admin.titre_editer')
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(set_params)
		@user.save
		
		redirect_to users_path, notice: "L'utilisateur a bien été crée"
	end

	

	def update 
		@user = User.find(params[:id])
		@user.update(set_params)
		redirect_to users_path, notice: "L'utilisateur a bien été modifié"
	end

	def destroy 
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path, notice: "L'utilisateur a bien été supprimé"
	end

	private 

	def set_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :is_admin)
	end

	def is_admin
		redirect_to root_path if !current_user.is_admin?
	end



end