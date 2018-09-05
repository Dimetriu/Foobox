require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without email" do
    expect(User.new(email: nil)).to_not be_valid
  end

  it "is not valid without username" do
    expect(User.new(username: nil)).to_not be_valid
  end

  it "is not valid without password" do
    expect(User.new(password: nil)).to_not be_valid
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

    it "has database index on email" do
      expect(user).to have_db_index(:email).unique(:true)
    end

    it "has database index on username" do
      expect(user).to have_db_index(:username).unique(:true)
    end

    it "has database index on reset_password_token" do
      expect(user).to have_db_index(:reset_password_token).unique(:true)
    end
  end
end
