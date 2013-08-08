class TicketsController < ApplicationController

def index
  @tickets = Ticket.all
end

def new
  @ticket = Ticket.new
end

def create
  @ticket = Ticket.create(params[:ticket])
  if @ticket.valid?
    flash[:notice] = "Ticket successfully created."
    HelpDeskMailer.help_desk_mailer(@ticket).deliver
    redirect_to tickets_path
  else
    flash[:alert] = "Ticket has not been created."
    render action: :new
    end
  end

  def show
    @ticket = Ticket.find(params[:ticket])
  end
end


