require 'test_helper'

class AppTest < ActiveSupport::TestCase
  test "App is able to parse json string" do
    str_for_test = '{"name": "test", "owner": "tester"}'

    app = App.parse(str_for_test)

    assert_equal "test", app.name
    assert_equal "tester", app.owner
  end
end
