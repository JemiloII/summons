require 'spec_helper'

describe "landings/index" do
  before(:each) do
    assign(:landings, [
      stub_model(Landing,
        :collect_emails => "Collect Emails"
      ),
      stub_model(Landing,
        :collect_emails => "Collect Emails"
      )
    ])
  end

  it "renders a list of landings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Collect Emails".to_s, :count => 2
  end
end
