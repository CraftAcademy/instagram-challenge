require 'rails_helper'

feature 'images' do
  context 'no images have been added' do
    scenario 'should display a prompt to add an image' do
      visit '/images'
      expect(page).to have_content 'No images yet'
      expect(page).to have_text 'Add image'
    end
  end

  context 'images have been added' do
    before do
      Image.create(name: 'image.jpg')
    end

    scenario 'display images' do
      visit '/images'
      expect(page).to have_content('image.jpg')
      expect(page).not_to have_content('No images yet')
    end
  end

  context 'uploading images' do
    scenario ' prompts user to upload image' do
      visit '/images/new'
      expect(page).to have_content('File to Upload')
      expect(current_path).to eq '/images/new'
    end
  end
end
