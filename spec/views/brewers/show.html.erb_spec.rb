require 'rails_helper'

RSpec.describe "brewers/show", type: :view do
  before(:each) do
    assign(:brewer, Brewer.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
