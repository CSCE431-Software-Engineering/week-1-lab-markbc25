require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      book = Book.new(title: 'Test Title', author: 'Test Author', price: 9.99, published_date: Date.today)
      expect(book).to be_valid
    end

    it 'is invalid without an author' do
      book = Book.new(title: 'Test Title', author: nil, price: 9.99, published_date: Date.today)
      expect(book).not_to be_valid
    end

    it 'is invalid without a price' do
      book = Book.new(title: 'Test Title', author: 'Test Author', price: nil, published_date: Date.today)
      expect(book).not_to be_valid
    end

    it 'is invalid without a published date' do
      book = Book.new(title: 'Test Title', author: 'Test Author', price: 9.99, published_date: nil)
      expect(book).not_to be_valid
    end
  end
end
