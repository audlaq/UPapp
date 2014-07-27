class WrittenStatement < ActiveRecord::Base
	belongs_to :politician

	validates :statements, :body, :path, :date, presence: true
end
