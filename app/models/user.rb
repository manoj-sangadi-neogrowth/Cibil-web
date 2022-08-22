class User < ApplicationRecord

    before_save { self.email = email.downcase }
    has_secure_password 
    
    validates :first_name, presence: true, length: {minimum: 5}
    validates :date_of_birth, presence: true
    VALID_MOBILE_REGEXP = /[6-9]\d{9}/
    validates :mobile, presence: true, format: {with: VALID_MOBILE_REGEXP}

    VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                        uniqueness: {case_sensitive: false},
                        length: {maximum: 105},
                        format: {with: VALID_EMAIL_REGEXP }

    validates :password, presence: true, length: { minimum: 8 }
    
    

end
