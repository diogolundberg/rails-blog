require 'rails_helper'

RSpec.describe "leads/show", type: :view do
  before(:each) do
    @lead = create(:lead)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
