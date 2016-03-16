require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :description => "MyText",
      :preptime => 1,
      :directions => "MyText"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_description[name=?]", "recipe[description]"

      assert_select "input#recipe_preptime[name=?]", "recipe[preptime]"

      assert_select "textarea#recipe_directions[name=?]", "recipe[directions]"
    end
  end
end
