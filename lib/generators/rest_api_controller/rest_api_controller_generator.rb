require 'rails/generators'
require 'generators/rest_api_controller/generator_helpers'
class RestApiControllerGenerator < Rails::Generators::NamedBase
  include GeneratorHelpers
  source_root File.expand_path('templates', __dir__)

  argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"

  API_CONTROLLER_DIR_PATH = "app/controllers"
  API_TEST_DIR_PATH = "spec/requests"

  def create_service_file
    Rails::Generators.invoke("model", [file_name, build_model_attributes])

    # generator_path =  API_CONTROLLER_DIR_PATH + "/#{file_name}_controller.rb"
    # test_path =  API_TEST_DIR_PATH + "/#{file_name}_spec.rb"
    # template "rest_api_controller.rb.erb", generator_path
    # template "rest_api_spec.rb.erb", test_path
    # routes_string = "resources :#{file_name}"
    # route routes_string
  end

  private
  def build_model_attributes
    model_attributes = []
    attributes.each do |attribute|
      model_attributes << "#{attribute.name}:#{attribute.type}"
    end
    model_attributes
  end

end
