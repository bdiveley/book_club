require 'rails_helper'

describe Book, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:pages) }
    it { should validate_presence_of(:year) }
  end

  describe 'Relationship' do
    it { should have_many(:reviews) }
    it { should have_many(:users).through(:reviews)}
    it { should have_many(:book_authors) }
    it { should have_many(:authors).through(:book_authors) }
  end
end
