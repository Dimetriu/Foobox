require 'rails_helper'

RSpec.describe Membership, type: :model do
  let(:user) { create(:user) }
  let(:group) { create(:group) }
  subject(:membership) { create(:membership, user_id: user.id, group_id: group.id) }

  context "attributes" do
    it "is valid with valid attributes" do
      expect(membership).to be_valid
    end
  end

  context "associations" do
    it "belongs to user" do
      expect(membership).to belong_to(:user).inverse_of(:memberships)
    end

    it "belongs to group" do
      expect(membership).to belong_to(:group).inverse_of(:memberships)
    end
  end

  context "database indexes" do
    it "has database index on user_id" do
      expect(membership).to have_db_index(:user_id)
    end

    it "has database index on group_id" do
      expect(membership).to have_db_index(:group_id)
    end
  end
end
