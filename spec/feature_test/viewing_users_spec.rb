require 'spec_helper'
require 'capybara/rspec'

feature 'Viewing Users' do
  scenario 'I can see submitted users' do
    User.create(email: 'bart@email.com', forename: 'Bart', surname: 'Judge')
    visit '/users'
    expect(page.status_code).to eq 200
    expect(page).to have_content('Bart')
  end
end
