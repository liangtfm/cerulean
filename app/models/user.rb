class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :rememberable, :trackable
    geocoded_by :ip_address
    after_validation :geocode

    validates :email, uniqueness: true, presence: true
end
