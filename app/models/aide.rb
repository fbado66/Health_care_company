class Aide < ApplicationRecord
    has_many :contracts
    has_many :services, through: :contracts 
    has_many :request_jobs
    has_many :request_services, through: :request_jobs

    has_secure_password

    def full_name_and_contract_info
        self.first_name + ' ' + self.last_name + ' - ' + self.town_you_live_in 
    end

    def pay_rate_on_contract
        self.contracts.map(&:title)
    end 

end
