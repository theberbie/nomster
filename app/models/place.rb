class Place < ActiveRecord::Base
	paginates_per 10

  belongs_to :user
  has_many :comments
  has_many :photos
  

  geocoded_by :address
  after_validation :geocode
  
  validates :name, :length => {minimum: 3}, presence: true
  validates :address, :length => {minimum: 4},presence: true
  validates :description, :length => {minimum:10}, presence: true
end

