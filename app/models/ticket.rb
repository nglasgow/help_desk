class Ticket < ActiveRecord::Base
  attr_accessible :message, :name, :subject
end
