class TicketsController < ApplicationController

def index

end

def new
  @ticket = Ticket.new
end

def create
  @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      HelpDeskMailer.help_desk_mailer.ticket(@ticket).deliver
      redirect_to @ticket, notice: "Ticket has been submitted"
    else
      render :new
    end
  end
end

