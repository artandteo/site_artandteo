class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]




  # GET /blogs
  # GET /blogs.json
  def index
    @titre = t('blog.titre') 
    @blogs = Blog.includes(:categorie).includes(:user).all
    
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @titre = t('blog.titre') 
  end

  # GET /blogs/new
  def new
    @titre = t('blog.titre') 
    @blog = Blog.new
    
  end

  # GET /blogs/1/edit
  def edit
    @titre = t('blog.titre') 
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @titre = t('blog.titre')
    @blog = Blog.new(blog_params)
    @blog.id = Blog.last.id + 1
    @blog.users_id = current_user.id
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @titre = t('blog.titre') 
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:titre, :contenu, :categorie_id, :image, :image_legende, :user)
    end

    def is_admin
      redirect_to root_path if signed_in? && !current_user.is_admin?
    end

end
