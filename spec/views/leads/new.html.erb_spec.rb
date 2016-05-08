require 'rails_helper'

RSpec.describe "leads/new", type: :view do
  before(:each) do
    @lead = build(:lead)
  end 

  it "renders new lead form" do
    render

    assert_select "form[action=?][method=?]", leads_path, "post" do

      assert_select "input#lead_name[name=?]", "lead[name]"

      assert_select "input#lead_email[name=?]", "lead[email]"
    end
  end
end
