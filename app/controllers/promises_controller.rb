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

  def update
    @promise = Promise.find(params[:id])
    @promise.update(promise_params)
    redirect_to promise_path(@promise)
  end

  def destroy
    promise = Promise.find(params[:id])
    promise.destroy
    redirect_to root_path
  end

  private

  def promise_params
    params.require(:promise).permit(:text)
  end
end
