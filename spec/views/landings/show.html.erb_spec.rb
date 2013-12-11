require 'spec_helper'

describe "landings/show" do
  before(:each) do
    @landing = assign(:landing, stub_model(Landing,
      :collect_emails => "Collect Emails"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Collect Emails/)
  end
end
