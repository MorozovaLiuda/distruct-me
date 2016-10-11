require 'spec_helper'
require_relative '../../../../apps/web/views/messages/main'

describe Web::Views::Messages::Main do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/main.html.erb') }
  let(:view)      { Web::Views::Messages::Main.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
