class Room < ApplicationRecord
    has_many :messages
    #has_secure_password validations: true
end
