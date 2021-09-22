class User < ApplicationRecord
  after_create :assign_default_role
  rolify
    #virtual attributes for authentication
    has_secure_password
    
    #validates username
    validates :username, presence: true, 
     uniqueness: { 
       message: ->(object, data) do
        "This username #{Current.user} #{data[:user_id]} is already taken" 
       end
       
    } 

    def assign_default_role
      self.add_role(:user) if self.roles.blank?
    end

    
    
end
