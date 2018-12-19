class PromisesController < ApplicationController
  def index
    require "pry"; binding.pry
    @promise = Promise.all
  end
end
