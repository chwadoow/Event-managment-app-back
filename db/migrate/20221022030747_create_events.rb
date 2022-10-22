class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.integer :category_id
      t.string :title
      t.datetime :event_date
      t.datetime :early_booking_end_date
      t.integer :early_booking_price_regular
      t.integer :early_booking_price_vip
      t.string :location
      t.integer :regular_price
      t.integer :vip_price
      t.integer :vip_no_of_tickets
      t.integer :regular_no_of_tickets
      t.string :banner_img
      t.string :description
      t.string :image_url1
      t.string :image_url2

      t.timestamps
    end
  end
end
