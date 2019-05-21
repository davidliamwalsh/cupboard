class Admin::CupboardsController < Admin::ApplicationController

  def index
    @cupboards = Cupboard.all
  end

  def new
  end

  def create
  end

end