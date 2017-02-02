class CategoriesController < ApplicationController
  before_action :set_Categorie, only: [:show, :edit, :update, :destroy]

  def index
    @titre = t('categorie.titre')
    @categories = Categorie.all
  end

  def show
    @titre = t('categorie.titre')
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

    @titre = t('categorie.titre')
    @categorie = Categorie.new(categorie_params)
    if @categorie.valid? 
       if @categorie.save
        flash[:success] = t('categorie.cat_creer')
        redirect_to @categorie
      end
    else 
      render 'edit'
    end
  end

  def update
    if @categorie.valid? 
      if @categorie.update(categorie_params)
        flash[:success] = t('categorie.cat_editer')
        redirect_to @categorie
      end
    else 
      redirect_to categories_path
    end
  end

  def destroy
    @categorie.destroy
    @categorie = Categorie.all
    flash[:success] = t('categorie.cat_supprimer')
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
