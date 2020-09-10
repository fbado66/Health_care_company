class RequestService < ApplicationRecord
  belongs_to :service
  belongs_to :client
  # has_one :request_job   ORIGINAL 

  has_many :request_jobs    
  # To work and do validation after 

  def label_for_collect_client
    self.client.first_name + ' ' +  self.client.last_name + ' - ' + self.service.title
  end 

  def self.not_on_a_request_job
    self.all.find_all do |request_job| 
      request_job.request_jobs.count == 0
    end 
  end 

end
