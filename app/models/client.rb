class Client < ApplicationRecord
    has_many :request_services ,:dependent => :destroy
    has_many :services, through: :request_services, :dependent => :destroy
    has_many :request_jobs, through: :request_services, :dependent => :destroy


    has_secure_password

    def full_name_and_request_service
        self.first_name + ' ' + self.last_name + ',  ' + self.town_you_live_in + ' - ' + "#{services_one_at_time} "
    end 

    def services_one_at_time 
        service = self.services.map do |service| 
            service.title
        end 
    end 

   def services_for_client
    self.services.map(&:title)
   end 


end
