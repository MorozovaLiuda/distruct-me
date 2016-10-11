require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/create'

describe Web::Controllers::Messages::Create do
  let(:action) { Web::Controllers::Messages::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
