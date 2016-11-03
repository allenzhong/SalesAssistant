require 'rails_helper'

RSpec.describe OrderHistory, type: :model do
  context "Associations" do
    it "belongs to order" do
      should belong_to(:order)
    end
  end

  context "CRUD" do
    let!(:order_history) { FactoryGirl.create(:order_history) }
    it "should be created" do
      expect(order_history).to be_valid
    end

    it "should be updated" do
      order_history.completed!
      order_history.save!
      expect(order_history.status).to eq("completed")
    end

    it "should be removed" do
      expect(OrderHistory.count).to eq(1)
      order_history.destroy!
      expect(OrderHistory.count).to eq(0)
    end
  end
end
