require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :name => "Name",
        :email => "email@mail.com"
      ),
      Lead.create!(
        :name => "Name",
        :email => "email@mail.com.br"
      )
    ])
  end

  xit "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
