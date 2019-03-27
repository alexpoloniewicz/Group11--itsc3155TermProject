class Manager < ApplicationRecord
    # make sure we have unique usernames
    validates :username, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: false }
    # uses hashed password
    has_secure_password
end
