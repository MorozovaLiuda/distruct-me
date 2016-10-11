require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/show'

describe Web::Controllers::Messages::Show do
  let(:action) { Web::Controllers::Messages::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
