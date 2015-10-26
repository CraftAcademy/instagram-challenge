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
      expect(page).to have_content('Image to Upload')
      expect(current_path).to eq '/images/new'
    end
  end


  context 'viewing images' do

    let!(:vasastan) { Image.create(name: 'Vasastan') }

    scenario 'lets a user view an image' do
      visit '/images'
      click_link 'Vasastan'
      expect(page).to have_content 'Vasastan'
      expect(current_path).to eq "/images/#{vasastan.id}"
    end
  end

  xcontext 'editing images' do

    before { Image.create name: 'Vasastan' }

    scenario 'lets a user change image name' do
      visit '/images'
      click_link 'Edit Vasastan'
      fill_in 'Name', with: 'Sibirien'
      click_button 'Update Image'
      expect(page).to have_content 'Sibirien'
      expect(currnt_path).to eq '/images'
    end
  end
end
