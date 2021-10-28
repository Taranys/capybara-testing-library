# frozen_string_literal: true

require "capybara"
require_relative "testing_library/version"
require_relative "testing_library/xpath"

module Capybara
  # Namespace to wrap anything related to testing library
  module TestingLibrary
    ROLES = {
      heading: {
        tag_names: %w[h1 h2 h3 h4 h5 h6]
      }
    }.freeze

    ROLES.each do |role, _config|
      Capybara.add_selector("role_#{role}".to_s, locator_type: [String]) do
        xpath do |content|
          options = { name: content }

          queries = []
          queries << Capybara::TestingLibrary::XPath.find_by_role_attribute(role, **options)
          queries << ROLES.dig(role, :tag_names)&.map do |tag_name|
            Capybara::TestingLibrary::XPath.find_by_tagname(tag_name, **options)
          end

          XPath.or(queries)
        end
      end
    end
  end
end
