require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      FactoryGirl.create(:product, name: "NameForTest"),
      FactoryGirl.create(:product, name: "NameForTest1")
    ])
  end

  it "renders a list of products" do
    render
    expect(rendered).to include("NameForTest")
    expect(rendered).to include("NameForTest1")
  end
end
