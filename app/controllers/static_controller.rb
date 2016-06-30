class StaticController < ApplicationController
  def index

  end

  def dash
    @tracks = current_user.tracks.limit(5).order("created_at DESC")

    @bar_chart = Gchart.bar(:data => Track.where(:user_id == current_user).pluck(:hours))
    end
end
