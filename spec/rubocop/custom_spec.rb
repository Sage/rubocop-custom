require "spec_helper"

RSpec.describe Rubocop::Custom do
  it "has a version number" do
    expect(Rubocop::Custom::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end