require 'spec_helper'
require_relative '../../../../apps/web/controllers/messages/destroy'

describe Web::Controllers::Messages::Destroy do
  let(:action) { Web::Controllers::Messages::Destroy.new}
  let(:params) {  { message: {'id': '1dec306e212a4f938bb3d548b742614e', 'text': 'text', 'current_clicks': '1',
   'total_amount': '1', 'distruct_method': '0', 'show_start_time': '2016-10-13 18:29:39 +0300
', 'client_password': 'password'}} }


  it 'is successful' do
    response = action.call(params)
    expect(response.body).to eq 'OK'
  end
end
