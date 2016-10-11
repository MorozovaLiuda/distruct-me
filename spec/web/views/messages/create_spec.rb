require 'spec_helper'
require_relative '../../../../apps/web/views/messages/create'

describe Web::Views::Messages::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/create.html.erb') }
  let(:view)      { Web::Views::Messages::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
