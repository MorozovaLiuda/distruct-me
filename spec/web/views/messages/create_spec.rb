require 'spec_helper'
require_relative '../../../../apps/web/views/messages/create'

RSpec.describe Web::Views::Messages::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/create.js.erb') }
  let(:view)      { Web::Views::Messages::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
