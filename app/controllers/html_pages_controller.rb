class HtmlPagesController < ApplicationController
  def home
    @snapshot = current_user.snapshots.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
