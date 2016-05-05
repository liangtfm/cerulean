class User < ActiveRecord::Base
    geocoded_by :ip_address
    after_validation :geocode

    validates :email, uniqueness: true, presence: true
end
