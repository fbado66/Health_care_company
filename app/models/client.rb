class Client < ApplicationRecord
    has_many :request_services
    has_many :services, through: :request_services
end
