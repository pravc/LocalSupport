require 'spec_helper'
describe '/devise/sessions/new.html.erb' do

  it 'includes org id in hidden field' do
    session[:pending_organisation_id] = 1
    render
    rendered.should have_xpath("//input[@name = 'pending_organisation_id'][@value='1']")
  end
end
