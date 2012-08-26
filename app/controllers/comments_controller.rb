class CommentsController < ApplicationController
  def new
  	@ticket = Ticket.first
  	@comment = @ticket.comments.new
  end

  def create
  	@ticket = Ticket.first
  	@comment = @ticket.comments.new(params)
  	@comment.body = params[:body]
  	redirect_to tickets_path
  end
end
