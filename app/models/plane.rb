class Plane < ApplicationRecord
  belongs_to :user
  has_one_attached :photo


  validates :rate, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :pilot_name, presence: true
  validates :photo, presence: true
  validates :name, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_location_and_name_and_pilot_name,
    against: [ :location, :name, :pilot_name ],
    using: {
      tsearch: { prefix: true }
    }


end
