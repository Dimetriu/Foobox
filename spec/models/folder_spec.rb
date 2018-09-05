require 'rails_helper'
require 'closure_tree/test/matcher'

RSpec.describe Folder, type: :model do

  it { is_expected.to be_a_closure_tree }

end
