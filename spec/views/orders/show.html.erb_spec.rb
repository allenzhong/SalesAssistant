require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, FactoryGirl.create(:order))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to include("table")
    assert_select "a[href=?]", edit_order_path(@order)
  end
end
