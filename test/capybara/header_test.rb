# frozen_string_literal: true

require "capybara/testing_library/test"

class Capybara::HeaderTest < Capybara::TestingLibrary::Test
  def test_that_we_detect_standard_header
    visit "/index.html"

    assert_role_heading "Main title"
    assert_role_heading "Sub title h2"
    assert_role_heading "Sub title h3"
    assert_role_heading "Sub title h4"
    assert_role_heading "Sub title h5"
    assert_role_heading "Sub title h6"
  end

  def test_that_we_detect_header_with_explicit_role
    visit "/index.html"

    assert_role_heading "Home page"
  end
end
