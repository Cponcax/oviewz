class Question < ActiveRecord::Base
	belongs_to :proceso
	has_one :Question_category
end
