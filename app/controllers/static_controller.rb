class StaticController < ApplicationController
  def index

  end

  def dash
    @tracks = current_user.tracks.limit(5).order("created_at DESC")

    @bar_chart = Gchart.bar(:data => Track.where(:user_id == current_user).pluck(:hours))
    @line_chart = Gchart.line(:data => Track.where(:user_id == current_user).pluck(:mood))
    @line_chart2 = Gchart.line(:data => Track.where(:user_id == current_user).pluck(:productivity))
  end

  def addash
    @tracks = Track.all.order("created_at DESC")
    @users = User.all.order("created_at DESC")
    @wikis = Wiki.all.order("created_at DESC")
    @comments = Comment.all.order("created_at DESC")
    @bar_chart = Gchart.bar(:data => Track.pluck(:hours))
    @line_chart = Gchart.line(:data => Track.pluck(:mood))
    @line_chart2 = Gchart.line(:data => Track.pluck(:productivity))
    end
end
