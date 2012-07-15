class IssueRequest
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :item, polymorphic: true
  belongs_to :book

  field :approved, type: Boolean, default: false

  scope :approved_count, where(approved: true).count
end
