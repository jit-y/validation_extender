require 'test_helper'

describe 'Version' do
  it { ::ValidationExtender::VERSION.wont_be_nil }
end
