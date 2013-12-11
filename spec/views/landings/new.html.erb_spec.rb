require 'spec_helper'

describe "landings/new" do
  before(:each) do
    assign(:landing, stub_model(Landing,
      :collect_emails => "MyString"
    ).as_new_record)
  end

  it "renders new landing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", landings_path, "post" do
      assert_select "input#landing_collect_emails[name=?]", "landing[collect_emails]"
    end
  end
end
