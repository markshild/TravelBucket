class UserCountry < ActiveRecord::Base
  validates :user_id, :country_id, presence: true

  belongs_to :user
  belongs_to :country
end
