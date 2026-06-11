$LOAD_PATH.unshift(File.join(ENV.fetch('GEM_ROOT'), 'lib'))

require 'simplecov'
require 'simplecov-cobertura'

SimpleCov.command_name 'Unit Tests'
SimpleCov.start do
  enable_coverage :branch
  root ENV.fetch('PROJECT_ROOT')
  coverage_dir 'coverage'
  formatter SimpleCov::Formatter::CoberturaFormatter
end

require File.join(ENV.fetch('PROJECT_ROOT'), 'lib', 'sample')

require 'test/unit'

class SampleTest < Test::Unit::TestCase
  def test_greet_with_name
    assert_equal "Hello, World!", Sample.new.greet("World")
  end

  def test_absolute_positive
    # Only exercises the else branch (n >= 0), never the then branch (n < 0)
    assert_equal 5, Sample.new.absolute(5)
  end
end
