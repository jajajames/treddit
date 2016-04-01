class VotesController < ApplicationController
  def create
    Vote.create(thing_id: params[:thing_id].to_i) # Do something with URL paramaters
    redirect_to root_path
  end
end
