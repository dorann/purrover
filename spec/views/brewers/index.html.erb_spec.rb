require 'rails_helper'

RSpec.describe "brewers/index", type: :view do
  before(:each) do
    assign(:brewers, [
      Brewer.create!(
        name: "Name"
      ),
      Brewer.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of brewers" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
