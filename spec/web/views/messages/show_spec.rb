require 'spec_helper'
require_relative '../../../../apps/web/views/messages/show'

describe Web::Views::Messages::Show do
  let(:exposures) { Hash[message: double('message')]}
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/show.html.erb') }
  let(:view)      { Web::Views::Messages::Show.new(template, exposures) }
  let(:format)    {'application/html'}
  let(:rendered)  { view.render }
  let(:message)   { double('message')}

  it 'exposes #message' do
    expect(view.message).to eq exposures.fetch(:message)
  end
end
