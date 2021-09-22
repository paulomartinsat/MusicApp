class User < ApplicationRecord
  rolify
    #virtual attributes for authentication
    has_secure_password
    
    #validates username
    validates :username, presence: true, uniqueness: true

    
    
end
