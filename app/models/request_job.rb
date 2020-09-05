class RequestJob < ApplicationRecord
  belongs_to :aide
  belongs_to :request_service
end
