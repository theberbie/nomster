class Place < ActiveRecord::Base
	paginates_per 50

  belongs_to :user
end

