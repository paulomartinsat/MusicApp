class User < ApplicationRecord
    #virtual attributes for authentication
    has_secure_password
    
    #validates username
    validates :username, presence: true, uniqueness: true
    #validates full_name
    validates :full_name, presence: true
end
