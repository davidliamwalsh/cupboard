class Admin::AssetsController < Admin::ApplicationController

  def create
    @cupboard = Cupboard.find(params[:cupboard_id])
    @asset = @cupboard.assets.build(asset_params)
    
    @asset.save
    
    redirect_to admin_cupboard_path(@asset.cupboard)
  end

  def destroy
  end

  private

  def asset_params
    params.require(:asset).permit(:title, :sku)
  end

end

