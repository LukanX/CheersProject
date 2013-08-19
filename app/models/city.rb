class City < ActiveRecord::Base
	attr_accessible :name, :cheers, :utc_offset, :dst
	validates :name, presence: true,  uniqueness: true
	validates :cheers, presence: true
	validates :utc_offset, presence: true
	validates :dst, presence: true;
end
