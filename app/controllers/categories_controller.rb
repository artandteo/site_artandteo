class CategoriesController < ApplicationController
  before_action :set_Categorie, only: [:show, :edit, :update, :destroy]

  def index
    @titre = t('Liste des catégories')
    @categories = Categorie.all
  end

  def show
    @titre = t('Affichage d\'une catégorie')
    @categorie = Categorie.includes(:blogs).find(params[:id])
  end

  # GET /categories/new
  def new
    @categorie = Categorie.new
  end

  # GET /categories/1/edit
  def edit
    @categorie = Categorie.find(params[:id])
  end

  def create
    @categorie = Categorie.new(categorie_params)
    @categorie.save
    redirect_to @categorie
  end

  def update
    if @categorie.update(categorie_params)
      redirect_to @categorie
    end
  end

  def destroy
    @categorie.destroy
    @categorie = Categorie.all
    redirect_to categories_path
  end

  private
    def set_Categorie
      @categorie = Categorie.find(params[:id])
    end

    def categorie_params
      params.require(:categorie).permit(:categorie_nom)
    end
end
