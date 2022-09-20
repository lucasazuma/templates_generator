require "test_helper"
require "generators/rest_api_controller/rest_api_controller_generator"

class RestApiControllerGeneratorTest < Rails::Generators::TestCase
  tests RestApiControllerGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
