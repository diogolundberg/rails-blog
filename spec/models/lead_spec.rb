require 'rails_helper'

RSpec.describe Lead, type: :model do
  before(:each) do
    @lead = Lead.new(name: "Name Surname", email: "user@domain.com")
  end 

  it "should be valid" do
    expect(@lead).to be_valid
  end

  it "name should be present" do
    @lead.name = ""
    expect(@lead).to_not be_valid
  end

  it "email should be present" do
    @lead.email = "     "
    expect(@lead).to_not be_valid
  end

  it "name should not be too long" do
    @lead.name = "a" * 51
    expect(@lead).to_not be_valid
  end

  it "email should not be too long" do
    @lead.email = "a" * 244 + "@example.com"
    expect(@lead).to_not be_valid
  end

  it "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @lead.email = valid_address
      expect(@lead).to be_valid
    end
  end

  it "email addresses should be unique" do
    duplicate_lead = @lead.dup
    duplicate_lead.email = @lead.email.upcase
    @lead.save
    expect(duplicate_lead).not_to be_valid
  end

end
