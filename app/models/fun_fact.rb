class FunFact < ActiveRecord::Base
  attr_accessible :fact_title, :fact

  validates :fact_title, presence: true
  validates :fact, presence: true
end
