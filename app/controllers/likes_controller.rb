class LikesController < ApplicationController
  before_action :authenticate_user!
 def update
 	if Follower.find_by(user_id: current_user.id, product_id: params[:product_id])
 		@follower = Follower.find_by(user_id: current_user.id, product_id: params[:product_id])
 		@follower.destroy
 		@val = "no"
 	else
 		Follower.create!(user_id: current_user.id, product_id: params[:product_id])
 		@val = "yes"
 	end
	render layout: false
 end
 def count
	@list = Follower.group(:product_id).count
    product_id = params[:product_id]
    @val = @list[product_id.to_i]
    render layout: false
 end 
end

