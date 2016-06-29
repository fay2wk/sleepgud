class StaticController < ApplicationController
  def index

  end

  def dash
    @tracks = current_user.tracks.order("created_at DESC")
  end
end
