require 'spec_helper'

describe "landings/edit" do
  before(:each) do
    @landing = assign(:landing, stub_model(Landing,
      :collect_emails => "MyString"
    ))
  end

  it "renders the edit landing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", landing_path(@landing), "post" do
      assert_select "input#landing_collect_emails[name=?]", "landing[collect_emails]"
    end
  end
end
