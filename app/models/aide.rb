class Aide < ApplicationRecord
    has_many :contracts
    has_many :services, through: :contracts 
    has_many :request_jobs
    has_one :request_service, through: :request_jobs

    belongs_to :user

end
