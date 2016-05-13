class Place < ActiveRecord::Base
	paginates_per 50

  belongs_to :user

  validates :name, :length => {minimum: 3}, presence: true
  validates :address, :length => {minimum: 4},presence: true
  validates :description, :length => {minimum:10}, presence: true
end

