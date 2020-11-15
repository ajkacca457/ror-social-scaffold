require 'rails_helper'

# rspec spec/views/user_spec.rb
RSpec.describe 'send request', type: :system do
  let(:test_friend) { User.create(name: 'Friend1', email: 'friend1@example.com', password: 'friend1') }
  let(:test_user) { User.create(name: 'User Test', email: 'user@example.com', password: 'password') }


  describe 'Friend request' do
    it 'shows there is a add friend option' do

      visit('/')
      click_link('Sign up')
      sleep 1
      fill_in('user[name]', with: 'friend1')
      fill_in('user[email]', with: 'friend1@example.com')
      fill_in('user[password]', with: 'friend1')
      fill_in('user[password_confirmation]', with: 'friend1')
      click_button('Sign up')
      visit('/')
      fill_in('user[email]', with: 'friend1@example.com')
      fill_in('user[password]', with: 'friend1')
      click_button('Log in')
      click_link('All users')
      expect(page).to have_content('Add Friend')
    end
end
end
