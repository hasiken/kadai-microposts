class FavoritesController < ApplicationController
  def create
    micropost= Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = '投稿をいいねしました。'
    redirect_to micropost
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'いいねを解除しました。'
    redirect_to root_path
  end
end
