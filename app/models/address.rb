class Address < ApplicationRecord
    belongs_to :applicant, foreign_key: 'applicant_id'
end

