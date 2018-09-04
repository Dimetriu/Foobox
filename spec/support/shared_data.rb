RSpec.configure do |rspec|
  rspec.shared_context_metadata_behavior = :apply_to_host_groups
end

RSpec.shared_context "shared_data", shared_context: :metadata do
  subject(:user) { create(:user) }
  subject(:membership) { create(:membership) }
  subject(:group) { create(:group) }
  subject(:category) { create(:category) }
end

RSpec.configure do |rspec|
  rspec.include_context "shared_data", include_shared: true
end
