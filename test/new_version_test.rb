require "test_helper"

class NewVersionTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NewVersion::VERSION
  end

  def test_it_get_git_version
    assert NewVersion.git.match('\d+.\d+\.\d+')
  end
  
  def test_it_get_ruby_version
    assert NewVersion.ruby.match('\d+.\d+\.\d+')
  end

  def test_it_get_python_version
    assert NewVersion.python.match('\d+.\d+\.\d+')
  end
end
