require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "Company create fails without a name" do
    assert_raises(ActiveRecord::RecordInvalid) { Company.create! }
  end

  test "Company is active when created" do
    assert Company.create(name: "some_name").active
  end
end
