class CheckInsController < ApplicationController

  def index
    @check_ins = CheckIn.all
  end

  def show
    @check_in = CheckIn.find(params[:id])
  end

  def new
    @check_in = CheckIn.new
  end

  def create
    @check_in = CheckIn.new
    @check_in.user_id = current_user.id
     @check_in.location_id = params[:location_id]

    if @check_in.save
      @check_in.user.update_attribute(:status, params[:user_status])
      @check_in.user.update_attribute(:tagline, params[:user_tagline])

      redirect_to "/check_ins", :notice => "Check in created successfully."
    else
      render 'new'
    end
  end

  def edit
    @check_in = CheckIn.find(params[:id])
  end

  def update
    @check_in = CheckIn.find(params[:id])

    @check_in.user_id = params[:user_id]
    @check_in.location_id = params[:location_id]

    if @check_in.save
      redirect_to "/check_ins", :notice => "Check in updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @check_in = CheckIn.find(params[:id])

    @check_in.destroy

    redirect_to "/check_ins", :notice => "Check in deleted."
  end
end
