#location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 12.0, publish_date: '03-03-2020')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a floating price' do
    subject.price = 'test'
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end

  end
end
