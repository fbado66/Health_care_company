class RequestService < ApplicationRecord
  belongs_to :service
  belongs_to :client
  has_one :request_job
end
