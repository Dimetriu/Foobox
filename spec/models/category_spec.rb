require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { create(:user) }
  subject(:category) { create(:category) }

  it "is valid with valid attributes" do
    expect(category).to be_valid
  end

  it "belongs to user" do
    expect(category).to belong_to(:user).inverse_of(:categories)
  end

  it "has database index on user_id" do
    expect(category).to have_db_index(:user_id)
  end
end
