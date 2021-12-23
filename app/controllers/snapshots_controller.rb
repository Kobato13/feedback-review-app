class SnapshotsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

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
    @snapshot.destroy
    flash[:success] = "Snapshot has been deleted."
    redirect_to request.referrer || root_url
  end

  private

  def snapshot_params
    params.require(:snapshot).permit(:content)
  end

  def correct_user
    @snapshot = current_user.snapshots.find_by(id: params[:id])
    redirect_to root_url if @snapshot.nil?
  end
end
