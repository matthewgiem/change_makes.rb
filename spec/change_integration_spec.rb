require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change path', {:type => :feature}) do
  it('accepts a number from the user and converts it into the fewest coins possible to represent that amount of change') do
    visit('/')
    fill_in('cents', :with => 92)
    click_button('Go')
    expect(page).to have_content('3 quarters 1 dime 1 nickle 2 pennies')
  end
end
