require 'spec_helper'
require_relative '../../../../apps/web/views/messages/show'

describe Web::Views::Messages::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/show.html.erb') }
  let(:view)      { Web::Views::Messages::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
