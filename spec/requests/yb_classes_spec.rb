require 'spec_helper'

describe "YbClasses" do
  describe "GET /yb_classes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get yb_classes_path
      response.status.should be(200)
    end
  end
end
