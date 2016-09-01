class Team < ActiveRecord::Base
	validates :rank, presence: true

end
