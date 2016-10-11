require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/main'

describe Web::Controllers::Messages::Main do
  let(:action) { Web::Controllers::Messages::Main.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
