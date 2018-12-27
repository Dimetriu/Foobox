require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  context "attributes" do
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "is valid if email is present" do
      expect(user).to validate_presence_of(:email)
    end

    it "is valid if password is present" do
      expect(user).to validate_presence_of(:password)
    end
  end

  context "associactions" do
    it "has many memberships" do
      expect(user).to have_many(:memberships).inverse_of(:user)
    end

    it "has many groups" do
      expect(user).to have_many(:groups).through(:memberships).inverse_of(:users)
    end

    it "has many categories" do
      expect(user).to have_many(:categories).inverse_of(:user)
    end
  end

  context "database indexes" do
    it "has database index on email" do
      expect(user).to have_db_index(:email).unique(:true)
    end

    it "has database index on reset_password_token" do
      expect(user).to have_db_index(:reset_password_token).unique(:true)
    end
  end
end
