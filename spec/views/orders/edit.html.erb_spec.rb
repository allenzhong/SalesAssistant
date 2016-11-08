require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, FactoryGirl.create(:order))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "select#order_status[name=?]", "order[status]"
      assert_select "div#order_items", :count => 1
    end
  end
end
