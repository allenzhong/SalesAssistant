require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, FactoryGirl.build(:order))
  end

  it "renders new order form" do
    render
    assert_select "form#new_order[action=?][method=?]", "/orders", "post" do
      assert_select "select#order_status[name=?]", "order[status]"
      assert_select "div#order_items", :count => 1
    end
  end
end
