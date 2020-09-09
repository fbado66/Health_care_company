class RequestService < ApplicationRecord
  belongs_to :service
  belongs_to :client
  # has_one :request_job   ORIGINAL 

  has_many :request_jobs    
  # To work and do validation after 
end
