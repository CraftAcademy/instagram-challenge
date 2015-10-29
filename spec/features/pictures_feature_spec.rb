require 'rails_helper'
require 'pry'

RSpec.feature 'Create Picture' do

  def login_user
    FactoryGirl.create(:user)
    visit '/'
    click_link 'Sign in'
    fill_in :user_email, with: 'factory@girl.com'
    fill_in :user_password, with: 'password'
    click_button 'Log in'
  end

  before do
    visit '/'
  end

  context 'when a visitor tries to create a Picture' do
    scenario "he can't do it" do
      click_link 'New Picture'
      expect(current_path).to eql(new_user_session_path)
      expect(page).to have_content('Log in')
    end
  end

  context 'when a signed in User tries to create a Picture' do

    before do
      login_user
    end

    scenario 'he can do it' do
      click_link 'New Picture'
      fill_in :picture_description, with: 'Funk Monk!'
      attach_file("picture_image", Rails.root + "spec/images/monkey.png")
      click_button 'Create Picture'
      expect(page).to have_content 'Funk Monk!'
    end
  end
end
