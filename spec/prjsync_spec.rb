require 'spec_helper'
RSpec.describe Prjsync do
  it "has a version number" do
    expect(Prjsync::VERSION).not_to be nil
  end

  it "connect jira" do
    prj = Prjsync::Prjsync.new
    expect(prj).not_to be_nil
  end
end
