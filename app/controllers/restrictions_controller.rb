class RestrictionsController < ApplicationController
  def index
    @restrictions = Restriction.all
  end

  def show
    @restriction = Restriction.find(params[:id])
  end
end
