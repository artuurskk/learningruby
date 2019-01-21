class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    @categories = Category.all.map{|c| [ c.name, c.id ] }

    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])

    else if params[:search]
          @products = Product.search(params[:search]).order("created_at DESC")
        else if params[:category_id]
           @products = Product.where(:category_id => params[:category_id])
             else
              @products = Product.paginate(:page => params[:page], :per_page => 5).order("created_at DESC")
          end
        end
    end

    respond_to do |format|
      format.html
      format.js
    end

    end
end
