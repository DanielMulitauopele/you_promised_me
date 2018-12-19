class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def show
    @promise = Promise.find(params[:id])
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.create(promise_params)
    redirect_to root_path
  end

  def edit
    @promise = Promise.find(params[:id])
  end

  private

  def promise_params
    params.require(:promise).permit(:text)
  end
end
