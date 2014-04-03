require 'spec_helper'

describe Tag do
  it { should validate_presence_of :name }
  it { should have_many :recipes }
  it { should belong_to :recipes }
end
