class Admin::CupboardsController < Admin::ApplicationController

  def index
    @cupboards = Cupboard.all
  end

  def show
    @cupboard = Cupboard.find(cupboard_params)
  end

  def new
    @cupboard = Cupboard.new
  end

  def create
    @cupboard = Cupboard.new(cupboard_params)

    if @cupboard.save
      redirect_to admin_cupboards_path, notice: "Cupboard created successfully!"
    else
      render :new
    end
  end

  def edit
    @cupboard = Cupboard.find(params[:id])
  end

  def update
    @cupboard = Cupboard.find(params[:id])
    @cupboard.attributes = cupboard_params

    if @cupboard.save
      redirect_to admin_cupboards_path, notice: "Cupboard updated successfully!"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def cupboard_params
    params.require(:cupboard).permit(:title)
  end

end