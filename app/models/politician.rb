class Politician < ActiveRecord::Base
	belongs_to :state
	has_many :written_statements
end
