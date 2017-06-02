require 'spec_helper'

describe NewRelic::RestApi do
  it 'has a version number' do
    expect(NewRelic::RestApi::VERSION).not_to be nil
  end
end
