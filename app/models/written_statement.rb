class WrittenStatement < ActiveRecord::Base
	belongs_to :politician

	validates :statements, :body, :path, :date, presence: true
	validates :date, format: { with: /<year>\d{4}\/<month>\d{1,2}\/<day>\d{1,2}/ }

# private

# 	def date_is_datetime?
# 		if !date.is_a?(Date)
# 			errors.add(:date, 'must be a valid date in YYYY-MM-DD format')
# 		end
# 	end

end
