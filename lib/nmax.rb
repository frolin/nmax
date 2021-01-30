# frozen_string_literal: true

require_relative "nmax/version"
require "thor"

module Nmax
  class Error < StandardError; end

  class NMax < Thor
    desc "N max", "read a string with integer"

    def self.find_nmax(n)
      puts "#{n} zzz.."
    end

  end


end

