require 'rails_helper'

RSpec.describe Product, type: :model do
  context "CRUD " do
    it "Should be created" do
      product = FactoryGirl.create(:product)
      expect(product).to be_valid(product)
    end

    it "Should be updated" do
      product = FactoryGirl.create(:product)
      name = "Test Product"
      product.name = name
      product.save!
      expect(product.name).to eq(name)
    end

    it "Should be destroyed" do
      product = FactoryGirl.create(:product)
      expect(Product.count).to eq(1)
      product.destroy!
      expect(Product.count).to eq(0)
    end
  end
end
