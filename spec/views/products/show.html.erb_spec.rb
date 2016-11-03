require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, FactoryGirl.create(:product))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to include("table")
    assert_select "a[href=?]", edit_product_path(@product)
  end
end
