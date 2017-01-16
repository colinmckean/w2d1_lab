require 'minitest/autorun'
require 'minitest/rg'
require_relative '../Student'

class TestStudent < MiniTest::Test
def setup
@colin = Student.new("Colin", 1)
end

  def test_student_get_name
    assert_equal("Colin", @colin.name)
  end
  def test_student_get_chort
    assert_equal(1, @colin.cohort)
  end
  def test_name_change
    @colin.name = "John"
    assert_equal("John", @colin.name)
  end
  def test_cohort_change
    @colin.cohort = 2
    assert_equal(2, @colin.cohort)
  end
  def test_can_talk
    assert_equal("I can talk!", @colin.talk)
  end
  def test_say_favourite_language
    assert_equal("I love Ruby", @colin.say_favourite_language("Ruby"))
  end
end
