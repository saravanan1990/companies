class Company < ApplicationRecord
	validates :name, :city, :state, :founded_on, :description, presence: true
	has_many :founders
	has_many :categories

	def get_company_detail
		founders = self.founders
		categories = self.categories
    response_hash = {}
    response_hash[:company] = self
    response_hash[:founders] = founders.blank? ? nil : founders
    response_hash[:categories] = categories.blank? ? nil : categories
    response_hash
	end
end
