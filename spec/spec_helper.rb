require "active_support/concern"
require "active_support/core_ext/module/delegation"
require "clearance/password_strategies/bcrypt"
require "clearance-deprecated_password_strategies"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.order = :random

  Kernel.srand config.seed
end

def fake_model_with_password_strategy(password_strategy)
  Class.new do
    attr_reader :password
    attr_accessor :encrypted_password, :salt

    include password_strategy

    def save
    end
  end.new
end

module Rails
  def self.env
    ActiveSupport::StringInquirer.new("test")
  end
end
