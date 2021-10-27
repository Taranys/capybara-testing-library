# frozen_string_literal: true

require "test_helper"
require 'capybara/minitest'

class Capybara::TestingLibraryTest < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def setup
    Capybara.default_driver = :selenium_chrome
    Capybara.app_host = 'file://'+__dir__+'../../../fixture'
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::Capybara::TestingLibrary::VERSION
  end

  def test_that_we_see_the_homepage
    visit '/index.html'

    assert_content 'Home page'
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
