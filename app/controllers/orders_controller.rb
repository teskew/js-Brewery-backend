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

    def update
        #  byebug
       order = Order.find_by_id(params[:id])
        if order.update(order_params)
            render json: order
        else
            render json: {error: "Couldn't Update"}
        end
    end

    # def destroy
    #     comment = Comment.find_by_id(params[:id])
    #     comment.destroy
    #     render json: {message: "Successfully deleted #{comment.title}"}
    # end
private

def order_params 
    params.require(:order).permit(:name, :amount, :price, :company_id)
end
end