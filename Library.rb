class Library
  # attr_reader :books
  def initialize(books_array)
    @books = books_array
  end
  
def list_all_book_details
  collection_of_books = []
  for book in @books
    collection_of_books.push(book)
    puts "The title #{book[:title]} is currently rented by #{book[:rental_details][:student_name]} and is due to be returned #{book[:rental_details][:date]}"
  end
  return collection_of_books
end

def find_book_by_title(title_of_book_to_find)
  for book in @books
    if book[:title] == title_of_book_to_find
      return book
    end
  end
end

def get_rental_details(book_title)
  find_book_by_title(book_title)[:rental_details] 
end

def add_new_book(book_title)
  @books.push({title: book_title, rental_details: {
    student_name: "",
    date: ""}})
end

def set_rental_details(title, student_name, date)
  get_rental_details(title)[:student_name] = student_name
  get_rental_details(title)[:date] = date
end
end


