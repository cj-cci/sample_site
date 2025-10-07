require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/'
    # Wait for initial page load and content to be fully rendered
    expect(page).to have_selector('#welcome', text: 'Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    # Wait for JavaScript to execute and DOM to update
    expect(page).to have_selector('#welcome', text: 'Hi, Thank you for touch me!')
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
  end
end
