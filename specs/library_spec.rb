require 'minitest/autorun'
require 'minitest/rg'
require_relative '../Library.rb'

class TestLibrary < MiniTest::Test
  def setup
    @book = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details:{ 
          student_name: "Jeff", 
          date: "01/12/17"
        }
      },
        {
        title: "captin_of_the_rings",
        rental_details:{ 
          student_name: "Chris", 
          date: "11/03/17"
        }
      },
        {
        title: "finder_of_the_rings",
        rental_details:{ 
          student_name: "John", 
          date: "19/06/17"
        }
      }
      ])
  end

  def test_list_all_book_details
    assert_output(/The title lord_of_the_rings is currently rented by Jeff and is due to be returned 01\/12\/17\nThe title captin_of_the_rings is currently rented by Chris and is due to be returned 11\/03\/17\nThe title finder_of_the_rings is currently rented by John and is due to be returned 19\/06\/17\n/){ @book.list_all_book_details}
    assert_equal(3, @book.list_all_book_details.length)
    puts "****"
  end

  def test_find_book_by_title
    assert_equal({ 
      title: "finder_of_the_rings",
      rental_details:{ 
        student_name: "John", 
        date: "19/06/17"
      }
      },@book.find_book_by_title("finder_of_the_rings"))
  end

  def test_get_rental_details
    assert_equal({student_name: "Chris", 
      date: "11/03/17"}, @book.get_rental_details("captin_of_the_rings"))
  end

  def test_add_new_book
    @book.add_new_book("Defender of the rings")
    assert_equal({title: "Defender of the rings", rental_details: {
      student_name: "",
      date: ""
      }},@book.find_book_by_title("Defender of the rings"))
  end

  def test_set_rental_details
    @book.add_new_book("Defender of the rings")
    @book.set_rental_details("Defender of the rings", "Colin", "23/01/17")
    assert_equal({title: "Defender of the rings", rental_details: {
      student_name: "Colin",
      date: "23/01/17"
      }},@book.find_book_by_title("Defender of the rings"))
  end

  def test_list_all_book_details_after_updates
    @book.add_new_book("Defender of the rings")
    @book.set_rental_details("Defender of the rings", "Colin", "23/01/17")
    assert_output(/The title lord_of_the_rings is currently rented by Jeff and is due to be returned 01\/12\/17\nThe title captin_of_the_rings is currently rented by Chris and is due to be returned 11\/03\/17\nThe title finder_of_the_rings is currently rented by John and is due to be returned 19\/06\/17\nThe title Defender of the rings is currently rented by Colin and is due to be returned 23\/01\/17\n/){ @book.list_all_book_details}
    assert_equal(4, @book.list_all_book_details.length)
    puts "*****"
  end
end
