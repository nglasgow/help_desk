class Ticket < ActiveRecord::Base
  attr_accessible :message, :name, :subject

  def self.update_from_postmark(mitt)
    id = mitt.subject.split("-").first.split(":").last.to_i
    ticket = Ticket.find_by_id(id)

    if ticket
      ticket.helpdesk_response = mitt.text_body
      ticket.save
    else
      return false
    end
  end
end
end
