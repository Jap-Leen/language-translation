require 'test_helper'

class UserRoutingTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "the truth" do
    assert true
  end

  test "should route to photo" do
    assert_routing '/articles/1', {controller: "articles", action: "show", id: "1"}
  end

  test "should route to country" do
    assert_routing '/countries/1', {controller: "countries", action: "show", id: "1"}
  end

  test "should route to site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

  test "should route to language" do
    assert_routing '/languages/1', {controller: "languages", action: "show", id: "1"}
  end

  test "should route to user" do
    assert_routing '/members/1', {controller: "users", action: "show", id: "1"}
  end

  test "should route to volunteer under site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

  test "should route to contributor under site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

end
