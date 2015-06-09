class InteractionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @interactions = Interaction.all
  end

  def show
    @interaction = Interaction.find(params[:id])
  end

  def new
    @interaction = Interaction.new
  end

  def reset
    Interaction.all.each do |testinteraction|
      if testinteraction.user_id == current_user.id
        testinteraction.destroy
      end
    end
    redirect_to "/shop"
  end

  def create
    @interaction = Interaction.new
    @interaction.like = params[:like]
    @interaction.product_id = params[:product_id]
    @interaction.user_id = params[:user_id]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interaction = Interaction.find(params[:id])
  end

  def update
    @interaction = Interaction.find(params[:id])

    @interaction.like = params[:like]
    @interaction.product_id = params[:product_id]
    @interaction.user_id = params[:user_id]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])

    @interaction.destroy

    redirect_to "/interactions", :notice => "Interaction deleted."
  end

  def autonew
    @interaction = Interaction.new
    @interaction.like = params[:like]
    @interaction.product_id = params[:prod_id]
    @interaction.user_id = current_user.id
    @interaction.save
    redirect_to "/shop"
  end

  def autoedit
    @interaction = Interaction.where(:user_id => current_user.id).where(:product_id => params[:id]).first
    @interaction.like = 0
    @interaction.save

      redirect_to "/products/user/index"
  end
end
