class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders
    #    render json: orders.to_json(except: [:created_at, :updated_at], include: {company: {only: [:name]}})
      #render json: orderSerializer.new(orders, {include: [:company]})
    end

    def show 
        order = Order.find_by_id(params[:id])
        render json: order
    end

    def create 
        
        order = Order.new(order_params)
      
        if order.save 
            render json: order
        else
            render json: {error: "Couldnt be saved"}
        end
    end
private

def order_params 
    params.require(:order).permit(:name, :amount, :price, :company_id)
end
end