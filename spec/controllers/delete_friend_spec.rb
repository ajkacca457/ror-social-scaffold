require 'rails_helper'

# rspec spec/views/user_spec.rb
RSpec.describe 'send request', type: :system do
  let(:test_friend) { User.create(name: 'Friend1', email: 'friend1@example.com', password: 'friend1') }
  let(:test_user) { User.create(name: 'User Test', email: 'user@example.com', password: 'password') }


  describe 'Friend request' do
    it 'shows there is a add friend option' do

      visit('/')
      fill_in('user[email]', with: 'user@example.com')
      fill_in('user[password]', with: 'password')
      click_button('Log in')
      click_link('Friend Requests')
      expect(page).to have_content('Remove')
    end
end
end
