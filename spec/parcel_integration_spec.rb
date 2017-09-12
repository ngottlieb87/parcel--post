require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it ('processes user input and calculates shipping cost') do
    visit('/')
    fill_in('length', :with => '5')
    fill_in('width', :with => '5')
    fill_in('height', :with => '5')
    fill_in('weight', :with => '5')
    click_button('Price it!')
    save_and_open_page
    expect(page).to have_content('8')
  end
end
