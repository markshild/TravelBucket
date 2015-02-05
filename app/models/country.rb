class Country < ActiveRecord::Base
  validates :name, :continent, presence: true

  belongs_to :continent
  has_many :user_countries, dependent: :destroy
  has_many :users, through: :user_countries, source: :user, inverse_of: :countries

end
