# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the winner path', {:type => :feature}) do
#   it('processes what player one and player two have and decides who wins') do
#     visit('/')
#     select('rock', :from => 'player_one')
#     select('paper', :from => 'player_two')
#     click_button('send')
#     expect(page).to have_content('loses')
#   end
# end
