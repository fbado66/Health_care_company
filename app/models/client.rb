class Client < ApplicationRecord
    has_many :request_services
    has_many :services, through: :request_services

    belongs_to :user
    # accepts_nested_attributes_for :user

    # has_one :user
    # accepts_nested_attributes_for :user

    



end
