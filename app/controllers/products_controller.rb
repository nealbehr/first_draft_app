class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
  end

  def indexuser
    @products = Product.all
    @interactions = Interaction.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def showuser
    @product = Product.find(params[:id])
  end
  def showuserinlist
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.url = params[:url]
    @product.description = params[:description]
    @product.price = params[:price]
    @product.picture = params[:picture]
    @product.title = params[:title]
    @product.product_id = params[:product_id]

    if @product.save
      redirect_to "/products", :notice => "Product created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.url = params[:url]
    @product.description = params[:description]
    @product.price = params[:price]
    @product.picture = params[:picture]
    @product.title = params[:title]
    @product.product_id = params[:product_id]

    if @product.save
      redirect_to "/products", :notice => "Product updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to "/products", :notice => "Product deleted."
  end
end
