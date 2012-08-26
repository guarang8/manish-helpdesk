class TicketsController < ApplicationController
  def index
  	#@assignable = User.find(2)
  	#@tickets = @assignable.tickets
  	@tickets = Ticket.all
  end

  def show
  	@ticket = Ticket.find(params[:id])
    @author = @ticket.assignable_type.classify.constantize.find(@ticket).first_name
  	@comment = @ticket.comments.new
    @user = User.new
  end

  def update
  	@ticket = Ticket.find(params[:id])
    if (params[:ticket].has_key?(:comment))
      if(params[:ticket][:comment].has_key?(:body))
        @comment = @ticket.comments.new(params[:ticket][:comment])
        @comment.save
        redirect_to ticket_path(params[:id])
      end
    end

    if (!params[:ticket].has_key?(:user))
      @ticket.assignable_id = User.find_by_first_name(params[:ticket][:user][:first_name]).id
      @ticket.save
      flash[:notice] = "Assigned to the respective User"
      redirect_to ticket_path(params[:id])
    end
  end
end
