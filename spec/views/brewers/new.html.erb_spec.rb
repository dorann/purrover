require 'rails_helper'

RSpec.describe "brewers/new", type: :view do
  before(:each) do
    assign(:brewer, Brewer.new(
      name: "MyString"
    ))
  end

  it "renders new brewer form" do
    render

    assert_select "form[action=?][method=?]", brewers_path, "post" do
      assert_select "input[name=?]", "brewer[name]"
    end
  end
end
