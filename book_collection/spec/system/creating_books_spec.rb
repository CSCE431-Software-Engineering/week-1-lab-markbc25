require 'rails_helper'

RSpec.describe 'Adding a book', type: :feature do
  scenario 'valid input with all attributes' do
    visit new_book_path
    fill_in 'Title', with: 'New Book Title'
    fill_in 'Author', with: 'New Author'
    fill_in 'Price', with: '19.99'
    select '2023', from: 'book_published_date_1i' # Year
    select 'March', from: 'book_published_date_2i' # Month
    select '15', from: 'book_published_date_3i' # Day
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
    expect(page).to have_content('New Book Title')
    expect(page).to have_content('New Author')
    expect(page).to have_content('19.99')
  end


end
