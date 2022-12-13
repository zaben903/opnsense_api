# frozen_string_literal: true

RSpec.describe OPNsenseAPI do
  it 'has a version number' do
    expect(OPNsenseAPI::VERSION).not_to be nil
  end
end
