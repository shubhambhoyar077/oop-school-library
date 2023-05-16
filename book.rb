# Create a class Book with the following:
    #     @title and @author instance variables, should be initialized in the constructor.
    #     Setters and getters for instance variables (remember about attr_accessor).
    # Create a class Rental with the following:
    #     @date instance variable, should be initialized in the constructor.
    #     Setter and getter for @date (remember about attr_accessor).
    # Create the many-to-many (also has-many-through) relationship between Person and Book using the intermediate class Rental. The following should be implemented:
    #     Create the has-many side of Book and Rental (a book has many rentals).
    #     Create the belongs-to side of Rental and Book (a rental belongs to a book).
    #     Create the has-many side of Person and Rental (a person has many rentals).
    #     Create the belongs-to side of Rental and Person (a rental belongs to a person).
    #     Modify the constructor of Rental so Book and Person are set in it.

    class Book
      attr_accessor :title, :author
      def initialize(title, author)
        @title = title
        @author = author
      end
    end