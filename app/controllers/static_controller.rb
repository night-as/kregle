class StaticController < ApplicationController
  def index
      @user = User.all
      @tracks = Track.all
  end

  def feed

  end

end
