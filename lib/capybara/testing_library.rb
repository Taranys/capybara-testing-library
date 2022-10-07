# frozen_string_literal: true

require "capybara"
require_relative "testing_library/version"
require_relative "testing_library/xpath"

module Capybara
  # Namespace to wrap anything related to testing library
  module TestingLibrary
    def assert_role_heading(text)
      query = XPath.or([
                         XPath.find_by_tagname("h1", text: text),
                         XPath.find_by_tagname("h2", text: text),
                         XPath.find_by_tagname("h3", text: text),
                         XPath.find_by_tagname("h4", text: text),
                         XPath.find_by_tagname("h5", text: text),
                         XPath.find_by_tagname("h6", text: text),
                         XPath.find_by_role_attribute("heading", text: text)
                       ])

      assert_selector :xpath, query
    end
  end
end
