require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        :name => "Name",
        :amount => "Amount",
        :comment => "MyText"
      ),
      Ingredient.create!(
        :name => "Name",
        :amount => "Amount",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
