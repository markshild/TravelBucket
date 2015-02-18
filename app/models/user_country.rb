class UserCountry < ActiveRecord::Base
  validates :user, :country_id, presence: true
  validates :user, uniqueness: { scope: :country_id, message: "Whoops!"}

  belongs_to :user
  belongs_to :country
end
