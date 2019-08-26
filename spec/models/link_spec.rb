require 'rails_helper'

RSpec.describe Link, type: :model  do
  let(:link) { Link.create!({
    :url => "http://example.com",
    :description => "sample Mark description"
    }) }
  it "creates a Link" do
    expect(link.persisted?).to eq true
    expect(link.url).to eq "http://example.com"
    expect(link.description).to eq "sample Mark description"
  end

  describe "attributes" do
    it "has expected attributes" do
      # ensure exactly the expected attributes are present on an album

      result = link.attribute_names.map(&:to_sym)

      expect(result).to contain_exactly(
        :id,
        :url,
        :description, 
        :created_at,
        :updated_at
      )      
    end
  end  
end
