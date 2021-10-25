# frozen_string_literal: true

require "test_helper"

class Capybara::Testing::LibraryTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Capybara::Testing::Library::VERSION
  end
end