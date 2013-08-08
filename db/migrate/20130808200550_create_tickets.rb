class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
