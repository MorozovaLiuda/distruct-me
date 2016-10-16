require 'spec_helper'
require_relative '../../../../apps/web/views/messages/main'

describe Web::Views::Messages::Main do
  let(:params) { Hash[] }
  let(:exposures) { Hash[foo: 'bar', params: params] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/main.html.erb') }
  let(:view)      { Web::Views::Messages::Main.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
