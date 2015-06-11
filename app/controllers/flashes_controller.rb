class FlashesController < ApplicationController
  def index
    @flashes = Flash.all
  end

  def show
    @flash = Flash.find(params[:id])
  end

  def new
    @flash = Flash.new
  end

  def create
    @flash = Flash.new
    @flash.user_1_id = params[:user_1_id]
    @flash.location_name = params[:location_name]
    @flash.match_id = params[:match_id]
    @flash.user2_id = params[:user2_id]

    if @flash.save
      redirect_to "/flashes", :notice => "Flash created successfully."
    else
      render 'new'
    end
  end

  def edit
    @flash = Flash.find(params[:id])
  end

  def update
    @flash = Flash.find(params[:id])

    @flash.user_1_id = params[:user_1_id]
    @flash.location_name = params[:location_name]
    @flash.match_id = params[:match_id]
    @flash.user2_id = params[:user2_id]

    if @flash.save
      redirect_to "/flashes", :notice => "Flash updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @flash = Flash.find(params[:id])

    @flash.destroy

    redirect_to "/flashes", :notice => "Flash deleted."
  end
end
