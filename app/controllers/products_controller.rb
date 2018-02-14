 class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  
  def index
    @products = Product.all

    search_term = params[:search]
    if search_term
      @products = @products.where("name iLike ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @products = @products.order(sort_attribute => :asc)
    end

    input_category = params[:category_name]
    if input_category 
      @products = Category.find_by(name: category_name).products
    end

    render 'index.json.jbuilder'
  end

  def create
      @product = Product.new(
                            name: params[:name],
                            description: params[:description],
                            price: params[:price],
                            supplier_id: params[:supplier_id]
                            )
      
      if @product.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
      @product = Product.find(params[:id])
      
      @product.name = params[:name] || @product.name
      @product.description = params[:description] || @product.description
      @product.price = params[:price] || @product.price
      @product_supplier_id = params[:supplier_id] || @product_supplier_id
    
      if @product.save
        render 'show.json.jbuilder'
      end
  end

  def destroy
      product = Product.find(params[:id])
      product.destroy
      render json: {message: "Successfully destroyed product ##{product.id}"}
  end
end

