class CreateRsvp < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :accept
      t.integer :party_size
      t.string :song
      t.string :address
      t.string :email_address
      t.string :message
    end
  end
end
