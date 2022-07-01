class ItemsController < ApplicationController


# Items
  # GET /users/:user_id/items
  def index
    items = Item.all
    render json: items, include: :user
  end


  # #  GET /users/:user_id/items
  # def index
  #   if params[:user_id]
  #     user = User.find(params[:user_id])
  #   if user
  #     items = user.items
  #   else
  #     return render json: { error: "User not found" }, status: :not_found
  #   end
  #     items = Item.all
  #   end
  #   render json: items, include: :user
  # end

  # def index 
  #   user = User.find_by(id: params[:user_id])
    
  #   if user
  #     render json: user.items
  #   else if params[:user_id]
  #     render json: { error: "User not found"}, status: :not_found
  #   else
  #      items = Item.all
  #      render json: items, include: :user
  #   end 
  # end




#   def show
#     item = Item.find_by(id: params[:id])
#     if item
#       render json: item
#     else
#       render json: {error: "Item not found"}, status: :not_found
#     end
#   end





#   def create
#     item = Item.create(item_params)
#   else
#     render json: item, status: :created
#   end
# end

#   private

#   def item_params
#     params.permit(:name, :description, :price)
#   end

end
