require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { create(:user) }
  subject(:group) { create(:group) }

  context "attributes" do
    it "is valid with valid attributes" do
      expect(group).to be_valid
    end
  end

  context "validations" do
    it "is if the name is present" do
      expect(group).to validate_presence_of(:name)
    end

    it "is valid with name length between 3 and 25" do
      expect(group).to validate_length_of(:name).is_at_least(3).is_at_most(25)
    end
  end

  context "associations" do
    it "has many users" do
      expect(group).to have_many(:users).through(:memberships).inverse_of(:groups)
    end

    it "has many memberships" do
      expect(group).to have_many(:memberships).inverse_of(:group)
    end
  end
end
