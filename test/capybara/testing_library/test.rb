# frozen_string_literal: true

require "test_helper"
require "capybara/minitest"

class Capybara::TestingLibrary::Test < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
  include Capybara::TestingLibrary

  def setup
    Capybara.default_driver = :selenium_chrome_headless
    Capybara.app_host = "file://#{__dir__}/../../fixture"
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
