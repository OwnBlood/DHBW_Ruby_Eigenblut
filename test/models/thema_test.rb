require 'test_helper'

class ThemaTest < ActiveSupport::TestCase
  test "thema name must be uniqe" do
    assert_raise ActiveRecord::RecordInvalid do
      Thema.create! name: themas(:one).name
    end
  end

  test "thema name must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Thema.create! name: nil
    end
  end

end
