require 'rails_helper'

RSpec.feature 'Sign Up and Sign In' do

  context 'Sign Up' do

    before do
      visit '/'
    end

    scenario 'visitors can Sign Up' do
      click_link 'Sign up'
      fill_in :user_email, with: 'foo@bar.com'
      fill_in :user_password, with: 'password'
      fill_in :user_password_confirmation, with: 'password'
      click_button 'Sign up'
      expect(page).to have_content 'Sign out'
    end
  end

  context 'Sign In' do

    before do
      visit '/'
      @user = FactoryGirl.create(:user)
    end

    scenario 'registered Users can Sign In' do
      click_link 'Sign in'
      fill_in :user_email, with: 'factory@girl.com'
      fill_in :user_password, with: 'password'
      click_button 'Log in'
      expect(page).to have_content 'Sign out'
    end
  end
end
