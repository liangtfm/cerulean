require 'rails_helper'

RSpec.describe User, type: :model do
    it "requires email to be created" do
      user = FactoryGirl.build(:user, email: nil)

      expect(user.save).to eq(false)
    end

    it "saves a user with an email" do
        user = FactoryGirl.build(:user)

        expect(user.save).to eq(true)
    end

    it "validates unique emails" do
        user1 = FactoryGirl.create(:user)
        user2 = FactoryGirl.build(:admin, email: 'a@a.com')

        expect(user2.save).to eq(false)
    end
end
