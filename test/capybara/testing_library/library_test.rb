# frozen_string_literal: true

require "capybara/testing_library/test"

class Capybara::LibraryTest < Capybara::TestingLibrary::Test
  def test_that_it_has_a_version_number
    refute_nil ::Capybara::TestingLibrary::VERSION
  end
end
