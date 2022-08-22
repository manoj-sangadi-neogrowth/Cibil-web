class Applicant < ApplicationRecord
    has_many :addresses
    include ActiveModel::Validations
    validates_with MyValidator
    validates :First_name, presence: true, length: {minimum: 5, maximum: 15}
    validates :last_name, presence: true
    validates :gender, presence: true
    
    VALID_PAN_REGEXP = /[a-z]{3}[cphfatblj][a-z]\d{4}[a-z]/i
    validates :pan_number, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_PAN_REGEXP}, length: {is: 10}
end
