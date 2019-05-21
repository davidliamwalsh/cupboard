class Admin::CupboardController < Admin::ApplicationController

  def index
    @cupboards = Cupboard.all("created_at").page(params[:page]).per(5)
  end

end