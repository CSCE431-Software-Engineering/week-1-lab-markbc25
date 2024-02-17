require 'rails_helper'

RSpec.describe 'Adding a book', type: :feature do
  scenario 'valid input' do
    visit new_book_path
    fill_in 'Title', with: 'New Book Title'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
    expect(page).to have_content('New Book Title')
  end

  scenario 'invalid input' do
    visit new_book_path
    fill_in 'Title', with: ''
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end
end
