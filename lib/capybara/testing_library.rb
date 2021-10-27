# frozen_string_literal: true

require 'capybara'
require_relative "testing_library/version"
require_relative "testing_library/xpath"

module Capybara
  module TestingLibrary

    Capybara.add_selector(:role, locator_type: [Array]) do
      xpath do |locator|
        role = locator[0]
        options = locator[1]

        Capybara::TestingLibrary::XPath.build_for_role(role, **options)
      end
    end
    
  end
end
