require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, Kaminari.paginate_array([
      FactoryGirl.create(:order, total: 70),
      FactoryGirl.create(:order, total: 81)
    ]).page(1))
  end

  it "renders a list of orders" do
    render
    expect(rendered).to include("70")
    expect(rendered).to include("81")
  end
end
