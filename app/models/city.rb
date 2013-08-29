class City < ActiveRecord::Base
	attr_accessible :name, :cheers, :time_zone, :background
	validates :name, presence: true,  uniqueness: true
	validates :cheers, presence: true
	validates :time_zone, presence: true
  validates :background, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :background

  has_attached_file :background, :styles => { :small => "300x300>"}, 
                                        :default_url => "/assets/backgrounds/construction.jpg"

  has_many :fun_facts

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

  def self.find_five
    self.all.select {|city| city.five_pm?}
  end

  def self.pick_city
    @city = self.find_five.sample
  end

end
