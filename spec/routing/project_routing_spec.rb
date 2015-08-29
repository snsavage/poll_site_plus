require "rails_helper"

describe "project routing" do
  it "routes polls" do
    expect(get: "/").to route_to(controller: "polls", action: "new")
  end
end

