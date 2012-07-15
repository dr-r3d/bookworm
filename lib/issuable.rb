module Issuable
  extend ActiveSupport::Concern

  def expected_borrow_date
    Date.today
  end

  def availble?
    self.stock >= issued_count
  end

  def issued_count
    issue_requests.approved_count
  end
end
