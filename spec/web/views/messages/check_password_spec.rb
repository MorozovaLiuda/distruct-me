require 'spec_helper'
require_relative '../../../../apps/web/views/messages/check_password'

describe Web::Views::Messages::CheckPassword do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/messages/check_password.html.erb') }
  let(:view)      { Web::Views::Messages::CheckPassword.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
