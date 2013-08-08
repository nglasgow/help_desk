class HelpDeskMailer < ActionMailer::Base
  default from: "nicoledg@uw.edu"

  def help_desk_mailer(ticket)
    @ticket = ticket
    mail(to: "nicoledg@u.washington.edu",
      subject: "Ticket:#{@ticket.id}- created",
      reply_to: "ce8b84e9693b33360b628a29fc31045d@inbound.postmarkapp.com")
  end
end
