class EventSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :title, :event_date, :early_booking_end_date, :early_booking_price_regular, :early_booking_price_vip, :location, :regular_price, :vip_price, :vip_no_of_tickets, :regular_no_of_tickets, :banner_img, :description, :image_url1, :image_url2
  belongs_to :category
end
