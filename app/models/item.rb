class Item < ActiveRecord::Base
	validates :task, presence: true
	validates :duedate, presence: true
	validate :due_date_cannot_be_in_the_past
	
	def due_date_cannot_be_in_the_past
		if(self.duedate < Date.today)
			errors.add(:duedate,"can't be in the past")
		end
	end
end
