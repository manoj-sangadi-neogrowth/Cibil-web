class MyValidator < ActiveModel::Validator

    def validate(record)
        unless record.date_of_birth.year < 2002
            record.errors.add :date_of_birth, "Applicant age should be greater than 18 years to insert"
        end
    end
end