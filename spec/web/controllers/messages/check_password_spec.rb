require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/check_password'

describe Web::Controllers::Messages::CheckPassword do
  let(:action) { Web::Controllers::Messages::CheckPassword.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
