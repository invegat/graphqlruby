require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    duser = User.find_by(email: "nhmarkco@yahoo.com")
    if duser
      User.delete({id: duser.id})
    end
  end
  describe "user tests" do
    let(:user) { User.create!({
      :name => "Mark Oliver",
      :email => "nhmarkco@yahoo.com",
      :password_digest => "xyz"
      }) }
    describe "test user create" do

      it "creates a User" do
        expect(user.persisted?).to eq true
        expect(user.name).to eq "Mark Oliver"
        expect(user.email).to eq "nhmarkco@yahoo.com"
      end
    end

    describe "attributes" do
      it "has expected attributes"  do
        # ensure exactly the expected attributes are present on an album

        result = user.attribute_names.map(&:to_sym)

        expect(result).to contain_exactly(
          :id,
          :name,
          :email,
          :password_digest, 
          :created_at,
          :updated_at
        )      
      end
    end
  end
end
  

