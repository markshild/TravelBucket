class UserCountry < ActiveRecord::Base
  validates :user, :country_id, presence: true

  belongs_to :user
  belongs_to :country
end
