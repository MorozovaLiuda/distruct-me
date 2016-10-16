require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/show'

describe Web::Controllers::Messages::Show do
  let(:action)      { Web::Controllers::Messages::Show.new(repository: repository) }
  let(:message)     { Message.new(id: '1dec306e212a4f938bb3d548b742614e', text: 'text') }
  let(:repository)  {double('repository', find: message)}

  it 'is successful' do
    response = action.call(id: message.id)
    expect(response[0]).to        eq 200
    expect(action.message).to     eq @message
  end
end
