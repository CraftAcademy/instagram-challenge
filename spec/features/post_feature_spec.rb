require 'rails_helper'

feature 'post' do
  context 'no post added' do
    scenario 'should display to add a post' do
      visit '/post'
      expect(page).to have_content 'No posts shown'
      expect(page).to have_link 'Post something'
    end
  end
end