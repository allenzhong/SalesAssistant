require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  context "Associations" do
    it "belongs to Order" do
      should belong_to(:order)
    end

    it "belongs to Product" do
      should belong_to(:product)
    end
  end

  context "CRUD" do
    it "should be created" do
      order_item = FactoryGirl.create(:order_item)
      expect(order_item).to be_valid
    end

    it "should be updated" do
      order_item = FactoryGirl.create(:order_item)
      order_item.quantity = 100
      order_item.save!
      expect(order_item.quantity).to eq(100)
    end

    it "should be destroyed" do
      order_item = FactoryGirl.create(:order_item)
      expect(OrderItem.count).to eq(1)
      order_item.destroy!
      expect(OrderItem.count).to eq(0)
    end
  end
end
