require 'rails_helper'

RSpec.describe "recipients/show", type: :view do
  before(:each) do
		@recipient = assign(:recipient, FactoryGirl.create(:recipient))
  end

  it "renders attributes in <p>" do
    render
		expect(rendered).to include("table")
		assert_select "a[href=?]", edit_recipient_path(@recipient)
  end
end
