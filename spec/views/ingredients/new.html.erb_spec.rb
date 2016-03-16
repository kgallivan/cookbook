require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :name => "MyString",
      :amount => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_name[name=?]", "ingredient[name]"

      assert_select "input#ingredient_amount[name=?]", "ingredient[amount]"

      assert_select "textarea#ingredient_comment[name=?]", "ingredient[comment]"
    end
  end
end
