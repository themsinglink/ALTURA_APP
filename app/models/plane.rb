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


end
