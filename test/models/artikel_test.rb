require 'test_helper'

class ArtikelTest < ActiveSupport::TestCase
  test "artikel name must be uniqe" do
    assert_raise ActiveRecord::RecordInvalid do
      Artikel.create! name: artikels(:one).name
    end
  end
  test "artikel datum must be set" do
    assert_raise ActiveRecord::RecordInvalid do
      Artikel.create! datum: nil
    end
  end

end
