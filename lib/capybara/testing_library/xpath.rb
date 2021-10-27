# frozen_string_literal: true

module Capybara
  module TestingLibrary

    class XPath
      def self.build_for_role(role, name:)
        "//*[@role=\"#{role}\"][normalize-space()=\"#{name}\"]"
      end
    end

  end
end
