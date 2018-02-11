class LikesController < ApplicationController
  def create
    like = Like.new(likeable_id: params[:article_id], likeable_type: "Artticle", user: current_user)
    like.save

    redirect_to article_path(like.article)

  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to article_path(like.article)
  end
end
