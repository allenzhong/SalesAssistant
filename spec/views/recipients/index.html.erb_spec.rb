require 'rails_helper'

RSpec.describe "recipients/index", type: :view do
  before(:each) do
    assign(:recipients, Kaminari.paginate_array([
      FactoryGirl.create(:recipient, name: "NameForTest"),
      FactoryGirl.create(:recipient, name: "NameForTest1")
    ]).page(1))
  end

  it "renders a list of recipients" do
    render
    expect(rendered).to include("NameForTest")
    expect(rendered).to include("NameForTest1")  
  end
end
