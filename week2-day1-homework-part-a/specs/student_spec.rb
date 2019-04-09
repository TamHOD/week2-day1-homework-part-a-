require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    student_info = Student.new('Alex', 'E30')
    assert_equal('Alex', student_info.student_name)
  end

  def test_student_cohort
    student_info = Student.new('Alex', 'E30')
    assert_equal('E30', student_info.cohort)
  end

  def test_set_student_name
    student_info = Student.new('Alex', 'E30')
    student_info.set_student_name("John")
    assert_equal("John", student_info.student_name)

  end

  def test_set_cohort
    student_info = Student.new('Alex', 'E30')
    student_info.set_cohort("E29")
    assert_equal("E29", student_info.cohort)
  end

  def test_i_can_talk
    student_info = Student.new('Alex', 'E30')
    assert_equal("I can talk", student_info.i_can_talk)
  end

  def test_say_favourite_language
    student_info = Student.new('Alex', 'E30')
    assert_equal("I love Ruby", student_info.say_favourite_language('Ruby'))
  end

end
