require 'test/unit'
require_relative 'fake_io'
require_relative 'hello'

class HelloTest < Test::Unit::TestCase
    def test_greet
        out = fake_io(['Matt']) do
            hello = Hello.new
            hello.greet
        end
        assert_includes(out, 'Hello, Matt!')
    end
end
