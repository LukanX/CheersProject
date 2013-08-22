class City < ActiveRecord::Base
	attr_accessible :name, :cheers, :time_zone, :background
	validates :name, presence: true,  uniqueness: true
	validates :cheers, presence: true
	validates :time_zone, presence: true
	validates :background, presence: true

	def hour
		Time.zone = time_zone
		@hour = Time.zone.now.hour
	end

	def five_pm
		if self.hour == 17
			return true
		else
			return false
		end
	end

	def five_pm?
		self.five_pm == true
	end

end
