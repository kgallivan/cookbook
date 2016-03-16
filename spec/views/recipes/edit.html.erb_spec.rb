require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "MyString",
      :description => "MyText",
      :preptime => 1,
      :directions => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_description[name=?]", "recipe[description]"

      assert_select "input#recipe_preptime[name=?]", "recipe[preptime]"

      assert_select "textarea#recipe_directions[name=?]", "recipe[directions]"
    end
  end
end
