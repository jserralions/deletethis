class Team < ActiveRecord::Base
	validates :rank, presence: true, uniqueness: true


end
