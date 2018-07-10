class MakersController < ApplicationController
  def index
    @makers = Maker.all
  end

  def new
    
  end

  def create
    maker = Maker.new(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    maker.save
    redirect_to root_path
  end

  def show
    @maker = Maker.find(params[:id])
  end

  def edit
    @maker = Maker.find(params[:id])
  end

  def update
    @maker = Maker.find(params[:id])
    @maker.update(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
    )
    redirect_to "/makers/#{@maker.id}"
  end

  def destroy
    @maker = Maker.find(params[:id])
    @maker.destroy
    redirect_to makers_path
  end
end
