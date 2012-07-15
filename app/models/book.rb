class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  include IssueLogic

  field :title, type: String
  field :description, type: String 
  field :stock, type: Integer
  field :publication, type: String
  field :author, type: String
  field :print_year, type: Integer

  has_many :issue_requests, as: :item
end
