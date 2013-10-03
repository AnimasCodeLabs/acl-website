require 'spec_helper'

describe Message do
  it{should validate_presence_of(:name)}
  it{should validate_presence_of(:email)}
  it{should validate_presence_of(:body)}

  describe "email format" do
    it{should allow_value("a@a.com").for(:email)}
    it{should allow_value("a@subdomain.a.com").for(:email)}
    it{should_not allow_value("hello world").for(:email)}
  end
end

