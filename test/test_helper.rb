# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'minitest/autorun'

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'test'
  end

  if ENV['CI']
    require 'codecov'
    SimpleCov.formatter = SimpleCov::Formatter::Codecov
  end
end
