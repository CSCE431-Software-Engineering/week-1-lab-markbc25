require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a title' do
    book = Book.new(title: 'Valid Title')
    expect(book).to be_valid
  end

  it 'is invalid without a title' do
    book = Book.new(title: nil)
    expect(book).not_to be_valid
  end
  
  it 'is valid with an author'
  it 'is valid with a price'
  it 'is valid with a published date'

end
