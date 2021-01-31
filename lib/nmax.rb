# frozen_string_literal: true

require_relative "nmax/version"
require "thor"

module Cli
  class Error < StandardError; end

  class NMax < Thor
    INT_MAX_LENGTH = 1000

    desc "Find N max", "find digits from string and print n_max"

    def self.n_max(input_data, n_max)
      digits = NMax.find_digits(input_data)
      raise "digits length must be less then #{INT_MAX_LENGTH}" if digits.last.length > INT_MAX_LENGTH

      NMax.print_result(digits, n_max)
    end

    def self.print_result(digits, n_max)
      puts "last n_max: #{digits.last(n_max).join(', ')}"
    end

    def self.find_digits(input_data)
      input_data.scan(/\d+/).sort_by(&:to_i)
    end

    def self.exit_on_failure?
      true
    end
  end
end

