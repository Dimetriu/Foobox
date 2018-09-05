require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { create(:user) }
  subject(:category) { create(:category) }

  context "attributes" do
    it "is valid with valid attributes" do
      expect(category).to be_valid
    end
  end

  context "validations" do
    it "is if the name is present" do
      expect(category).to validate_presence_of(:name)
    end

    it "is valid with name length between 3 and 25" do
      expect(category).to validate_length_of(:name).is_at_least(3).is_at_most(25)
    end
  end

  context "associations" do
    it "belongs to user" do
      expect(category).to belong_to(:user).inverse_of(:categories)
    end
  end

  context "database indexes" do
    it "has database index on user_id" do
      expect(category).to have_db_index(:user_id)
    end
  end
end
