class Admin::AssetsController < Admin::ApplicationController

  def create
    @asset = Asset.new(asset_params)
    @asset.cupboard_id = params[:cupboard_id]

    @asset.save
    
    redirect_to admin_cupboard_path(@asset.cupboard)
  end

  def asset_params
    params.require(:asset).permit(:title, :sku)
  end

end

