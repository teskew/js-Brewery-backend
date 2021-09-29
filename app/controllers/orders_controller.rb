class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders
    end

    def create 
        order = Order.new(order_params)
        # byebug
      end
private

def order_params 
    params.require(:order).permit(:name, :amount, :price, :company_id)

end
end