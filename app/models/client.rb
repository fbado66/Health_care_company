class Client < ApplicationRecord
    has_many :request_services
    has_many :services, through: :request_services
    has_many :request_jobs, through: :request_services


    has_secure_password

    def full_name_and_request_service
        self.first_name + ' ' + self.last_name + ' '+ "#{services_one_at_time}"
    end 

    def services_one_at_time 
        service = self.services.find do |service| 
            service
        end 
        service.title
    end 

   


end
