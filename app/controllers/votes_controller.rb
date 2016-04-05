class VotesController < ApplicationController

  before_action :require_user

  def create
    current_user.votes.create(thing_id: params[:thing_id]) # Do something with URL paramaters
    redirect_to root_path
  end
end
