class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]
  def index
  	@categorie1 = Categorie1.all
  	@product = Product.order("created_at DESC").page(params[:page])
    if current_user
      @follower = Follower.where(user_id: current_user.id)
    end
    @list= Follower.group(:product_id).count
    @best3= Follower.group(:product_id).count
    @sort = @best3.sort_by {|_key, value| value}
    @result = @sort.reverse.to_h 
    @array = Array.new
    @result.each do |key, value|
      @array << key
    end
    #@best3 = Product.find(@array[0].to_i, @array[1].to_i, @array[2].to_i)
  end
  def show_product1
    @categorie1 = Categorie1.all
    @product = Product.where(categorie1: params[:id]).page(params[:page])
    @categorie = Categorie2.where(categorie1: params[:id])
    @load = Categorie1.find(params[:id])
    if current_user
      @follower = Follower.where(user_id: current_user.id)
    end
    @list= Follower.group(:product_id).count
    @best3= Follower.group(:product_id).count
    @sort = @best3.sort_by {|_key, value| value}
    @result = @sort.reverse.to_h 
    @array = Array.new
    @result.each do |key, value|
      @array << key
    end
    #@
  end
  def show_product2
    @categorie1 = Categorie1.all
    @product = Product.where(categorie2: params[:id]).page(params[:page])
    @categorie = Categorie3.where(categorie2: params[:id])
    @load = Categorie2.find(params[:id])
    if current_user
      @follower = Follower.where(user_id: current_user.id)
    end
    @list= Follower.group(:product_id).count
    @best3= Follower.group(:product_id).count
    @sort = @best3.sort_by {|_key, value| value}
    @result = @sort.reverse.to_h 
    @array = Array.new
    @result.each do |key, value|
      @array << key
    end
    #@
  end
  def show_product3
    @categorie1 = Categorie1.all
    @product = Product.where(categorie3: params[:id]).page(params[:page])
    @load = Categorie3.find(params[:id])
    if current_user
      @follower = Follower.where(user_id: current_user.id)
    end
    @list= Follower.group(:product_id).count
    @best3= Follower.group(:product_id).count
    @sort = @best3.sort_by {|_key, value| value}
    @result = @sort.reverse.to_h 
    @array = Array.new
    @result.each do |key, value|
      @array << key
    end
    #@
  end
  def find_categorie2
  	categorie1 = Categorie1.find_by(content: params[:categorie1])
  	@categorie2 = Categorie2.where(categorie1_id: categorie1.id)

  	render layout: false
  end
  def find_categorie3
  	categorie2 = Categorie2.find_by(content: params[:categorie2])
  	@categorie3 = Categorie3.where(categorie2_id: categorie2.id)

  	render layout: false
  end
  def page_scroll
    @product = Product.order("created_at DESC").page(params[:page])
  end
  def add_cart
    Basket.create!(user_id: current_user.id, product_id: params[:product_id])
    redirect_to '/'
  end
  def cart
    @baskets = Basket.where(user_id: current_user.id).order("created_at DESC")
  end
  def delete_product
    @basket = Basket.find(params[:id])
    @basket.destroy
    redirect_to :back
  end
  def add_order
    ids = params[:id_list].rstrip.split()
    #@product_ids = ""
    @product_ids = []
    @basket_ids = []
    @product_price = 0
    @donation_price = 0
    @total_price = 0
    #@total_weight = 0
    #@numbers = ""
    @numbers = []
    #@donations = ""
    @donations = []
    ids.each do |id|
      stId = id.to_s
      num = "num" + stId
      @basket = Basket.find(id)
      #@product_ids = @product_ids + @basket.product_id.to_s + " "
      @basket_ids.append(@basket.id.to_s)
      @product_ids.append(@basket.product_id.to_s)
      number = params[num]
      #@numbers = @numbers + number + " "
      @numbers.append(number)
      @product_price = @product_price + @basket.product.price * number.to_i
      @total_price = @total_price + @basket.product.price * number.to_i
      #@total_weight = @total_weight + @basket.product.weight * number.to_i
      if params[stId] == "true"
        #@donations = @donations + "true" + " " 
        @donations.append("true")
        @donation_price = @donation_price + @basket.product.price
        @total_price = @total_price + @basket.product.price
        #@total_weight = @total_weight + @basket.product.weight * number.to_i
      else
        #@donations = @donations + "false" + " "     
        @donations.append("false")
      end
      #@basket.destroy
    end  
    @order = Order.new
    #@order = Order.create(user_id: current_user.id, product_ids: @product_ids, numbers: @numbers, donations: @donations, product_price: @product_price, donation_price: @donation_price, total_price: @total_price, address: params[:address], payment: "배송준비중", invoice: "준비중", parcel: "쿠팡", parcel_number: "01000000000")  
    @address = Order.where(user_id: current_user).group(:address, :address_detail, :address_number)
  end

  def orderCreate
    @order = Order.create(user_id: current_user.id, name: params[:order][:name], phone: params[:order][:phone], phone2: params[:order][:phone2], product_ids: params[:order][:product_ids], numbers: params[:order][:numbers], donations: params[:order][:donations], product_price: params[:order][:product_price], donation_price: params[:order][:donation_price], total_price: params[:order][:total_price], address: params[:order][:address], address_detail: params[:order][:address_detail], address_number: params[:order][:address_number], payment: "입금 대기중", invoice: "준비중", parcel: "쿠팡", parcel_number: "01000000000", payment_option: params[:order][:payment_option],agreement: params[:order][:agreement],content: params[:order][:content] )  
    @basket_ids = params[:order][:basket_ids].split()
    if @basket_ids[1]
      @basket_ids.each do |basket_id|
        @basket = Basket.find(basket_id)
        @basket.destroy
      end
    else
      @basket = Basket.find(@basket_ids[0])
      @basket.destroy
    end
    redirect_to '/welcome/order'
  end
  def order
    @orders = Order.where(user_id: current_user.id).order("created_at DESC")
  end
  def post
    @posts = Post.where(classification_id: params[:id])
  end
  def inquiry
    @inquiry = Inquiry.new
    @classification = Classification.select(:category)
  end
  def inquiryCreate
    Inquiry.create!(email: params[:inquiry][:email], title: params[:inquiry][:title], content: params[:inquiry][:content], category: params[:inquiry][:category], answer: "답변 준비중", user_id: current_user.id)
    redirect_to '/welcome/myInquiry'
  end
  def myInquiry
    @inquiries = Inquiry.where(user_id: current_user.id).order("created_at DESC") 
  end
  def delete_inquiry
    @inquiry = Inquiry.find(params[:id])
    @inquiry.destroy
    redirect_to '/welcome/myInquiry'
  end
  def delete_order
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to '/welcome/order'
  end
end
