class Service < ApplicationRecord
    has_many :request_services
    has_many :clients, through: :request_services
    has_many :contracts
    has_many :aides, through: :contracts


     
end
