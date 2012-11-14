class SitePagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def standings
  end

  def powerrankings
  end

  def keepers
  end

  def history
  end

  def teambios
  end

  def fantasybaseballsites
  end
end
