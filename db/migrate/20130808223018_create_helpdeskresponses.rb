class CreateHelpdeskresponses < ActiveRecord::Migration
  def change
    add_column :tickets, :helpdesk_response, :message
  end
end
