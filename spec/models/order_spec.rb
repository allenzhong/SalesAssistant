require 'rails_helper'

RSpec.describe Order, type: :model do
  context "Associations" do
    it "should have many order items" do
      should have_many(:order_items)
    end

    it "should belongs to one recipient" do
      should belong_to(:recipient)
    end

    it "should have many histories" do
      should have_many(:order_histories)
    end
  end

  context "CRUD " do
    it "Should be created" do
      order = FactoryGirl.create(:order)
      expect(order).to be_valid(order)
    end

    it "Should be updated" do
      order = FactoryGirl.create(:order)
      order.completed!
      order.save!
      expect(order.status).to eq("completed")
    end

    it "Should be destroyed" do
      order = FactoryGirl.create(:order)
      expect(Order.count).to eq(1)
      order.destroy!
      expect(Order.count).to eq(0)
    end
  end
end
