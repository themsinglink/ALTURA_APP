class AddDetailsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start, :datetime
    add_column :bookings, :end, :datetime
    add_column :bookings, :message, :text
  end
end
