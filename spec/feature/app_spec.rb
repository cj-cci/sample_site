require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).to have_content('Hi, Thank you for touch me!')
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
  end
end
