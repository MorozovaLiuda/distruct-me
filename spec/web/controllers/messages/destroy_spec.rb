require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/destroy'

describe Web::Controllers::Messages::Destroy do
  let(:action) { Web::Controllers::Messages::Destroy.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
