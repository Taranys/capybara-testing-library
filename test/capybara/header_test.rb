# frozen_string_literal: true

require "capybara/testing_library/test"

class Capybara::HeaderTest < Capybara::TestingLibrary::Test
  def test_that_we_see_the_homepage
    visit "/index.html"

    assert_selector :role, [:heading, name: 'Home page'] 
  end
end
