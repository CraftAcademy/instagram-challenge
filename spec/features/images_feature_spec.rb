require 'rails_helper'

feature 'images' do

  before do
    Image.create(name: 'image added')
  end

  context 'no images have been added' do
    scenario 'should display a prompt to add an image' do
      visit '/images'
      expect(page).to have_content 'No images yet'
      expect(page).to have_link 'Add an image please'
    end
  end
  context 'images have been added' do
    scenario 'display images' do
      visit '/images'
      expect(page).to have_content('image added')
      expect(page).not_to have_content('No images yet')
    end
  end
  context 'creating images' do
    scenario 'can create an image' do
      visit '/images'
      click_link 'New image'
      attach_file('image', "spec/b.jpg")
      fill_in 'Name', with: 'image added'
      click_button 'Create Image'
      expect(page).to have_content 'image added'
      expect(page).to have_css("img[src*='b.jpg']")
    end
  end
end

