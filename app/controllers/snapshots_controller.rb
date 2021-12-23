class SnapshotsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @snapshot = current_user.snapshots.build(snapshot_params)
    if @snapshot.save
      flash[:success] = "Snapshot created"
      redirect_to root_url
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
      render 'html_pages/home'
    end
  end

  def destroy
  end

  private

  def snapshot_params
    params.require(:snapshot).permit(:content)
  end
end
