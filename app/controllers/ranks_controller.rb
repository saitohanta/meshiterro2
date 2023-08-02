class RanksController < ApplicationController
  def rank
    @post_image_favorite_ranks = PostImage.find(Favorite.group(:post_image_id).order('count(post_image_id) desc').pluck(:post_image_id))
  end
end