require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :tags_id }

  it { should have_and_belong_to_many :tags }
end
