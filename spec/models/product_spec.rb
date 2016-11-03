require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should belongs to a user" do
    should belong_to(:user)
  end

  context "Presence of" do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:weight) }
    it { should validate_numericality_of(:price) }
  end

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
