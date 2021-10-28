# frozen_string_literal: true

module Capybara
  module TestingLibrary
    # Helper class to generate xpath query for roles
    class XPath
      def self.or(xpath_queries)
        xpath_queries.join " | "
      end

      def self.find_by_role_attribute(role, name:)
        "//*[@role=\"#{role}\"]#{text_content(name)}"
      end

      def self.find_by_tagname(tagname, name:)
        "//#{tagname}#{text_content(name)}"
      end

      def self.text_content(text)
        "[normalize-space()=\"#{text}\"]"
      end
    end
  end
end
