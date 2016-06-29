class StaticController < ApplicationController
  def index

  end

  def dash
    @tracks = current_user.tracks.limit(5).order("created_at DESC")
  end
end
