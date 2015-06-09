class ShopController < ApplicationController
  before_action :authenticate_user!
   def shop
      last = 0
      Interaction.where(user_id: current_user.id).each do |worker|
         if last < worker.product_id then
            last = worker.product_id
         end
      end
      @cur_prod = Product.find_by(id: last+1)
      render "test.html.erb"
   end
end
