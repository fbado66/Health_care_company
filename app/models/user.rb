class User < ApplicationRecord
    # has_one :client
    # has_one :aide
    
    # accepts_nested_attributes_for :client


    has_secure_password
end
