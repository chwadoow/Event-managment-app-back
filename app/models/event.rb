class Event < ApplicationRecord
    belongs_to :category
    has_many :tickets
    has_many :users,through: :tickets
    has_one_attached :banner_img
    has_one_attached :image_url1
    has_one_attached :image_url2

    validates :category_id, :title, :event_start_date, :event_end_date, :early_booking_end_date, :early_booking_price_regular, :early_booking_price_vip, :location , :regular_price, :vip_price, :vip_no_of_tickets, :regular_no_of_tickets, :banner_img, :description, :image_url1 , :image_url2, presence: true

    def time_diff
        current_time = Time.new
        very_current = current_time.to_time
        very_event = event_start_date.to_time
        diff = very_event - very_current
        (diff/60/60/24).to_i
    end

    def early_timer
        current_time = Time.new
        very_current = current_time.to_time
        very_event = early_booking_end_date.to_time
        diff = very_event - very_current
        (diff/60/60/24).to_i
    end

    def banner_img_url
        Rails.application.routes.url_helpers.url_for(banner_img) if banner_img.attached?
    end

    def first_img_url
        Rails.application.routes.url_helpers.url_for(image_url1) if image_url1.attached?
    end

    def second_img_url
        Rails.application.routes.url_helpers.url_for(image_url2) if image_url2.attached?
    end
end