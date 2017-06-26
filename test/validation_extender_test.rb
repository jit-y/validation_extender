require 'test_helper'

class ValidationExtenderTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ValidationExtender::VERSION
  end
end
