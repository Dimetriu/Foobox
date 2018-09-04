require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }
  subject(:membership) { create(:membership) }
  subject(:group) { create(:group) }
  subject(:category) { create(:category) }

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
      expect(user).to have_many(:memberships)
    end

    it "has many groups" do
      expect(user).to have_many(:groups)
    end

    it "has many categories" do
      expect(user).to have_many(:groups)
    end
  end
end
