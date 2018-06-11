class ProductsController < ApplicationController
  before_action :set_product, :except => [:index, :new, :create]
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save then redirect_to products_path
    else render :new and return
    end
  end
  
  def show
  end
  
  def data
    render :json => ProductSerializer.serialize(@product)
  end

  def description
    render :plain => @product.description
  end

  def inventory
    render :plain => !!( @product.inventory > 0 )
  end

  private
  
  def set_product
    @product = Product.find_by(:id => params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
