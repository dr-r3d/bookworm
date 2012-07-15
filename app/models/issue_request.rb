class IssueRequest
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :book

  field :approved, type: Boolean, default: false
end
