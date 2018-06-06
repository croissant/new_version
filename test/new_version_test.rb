require "test_helper"

class NewVersionTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NewVersion::VERSION
  end

  def test_it_get_git_version
    assert '2.17.1' == NewVersion.git
  end
  
  def test_it_get_ruby_version
    assert '2.5.1' == NewVersion.get(:ruby)
    assert '2.5.1' == NewVersion.ruby
  end

  def test_it_get_python_version
    assert '3.6.5' == NewVersion.python
  end
end
