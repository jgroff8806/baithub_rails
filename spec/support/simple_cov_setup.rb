# frozen_string_literal: true

require 'simplecov'

module SimpleCovSetup
  SimpleCov.start 'rails' do
    coverage_dir 'target/coverage'
  end
end
