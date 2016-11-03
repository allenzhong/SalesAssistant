require 'rails_helper'

RSpec.describe Recipient, type: :model do
  it "should belongs to a user" do
    should belong_to(:user)
  end

  context "Associations" do
    it "has many recipients" do
      should have_many(:orders)
    end
  end

  context "CRUD" do
    it "could be created" do
      recipient = FactoryGirl.create(:recipient)
      expect(recipient).to be_valid
    end

    it "could be updated" do
      recipient = FactoryGirl.create(:recipient)
      recipient.name = "TestName"
      recipient.save
      expect(recipient.name).to eq("TestName")
    end

    it "could be destroyed" do
      recipient = FactoryGirl.create(:recipient)
      expect(Recipient.count).to eq(1)
      recipient.destroy!
      expect(Recipient.count).to eq(0)
    end
  end
end
