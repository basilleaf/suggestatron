class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    vote.save!

    if !params[:redir].blank?
    	redirect_to(Topic.find(params[:redir]))
	else
		redirect_to(topics_path)
	end	

  end


end