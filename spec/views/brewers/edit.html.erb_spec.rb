require 'rails_helper'

RSpec.describe "brewers/edit", type: :view do
  let(:brewer) {
    Brewer.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:brewer, brewer)
  end

  it "renders the edit brewer form" do
    render

    assert_select "form[action=?][method=?]", brewer_path(brewer), "post" do
      assert_select "input[name=?]", "brewer[name]"
    end
  end
end
