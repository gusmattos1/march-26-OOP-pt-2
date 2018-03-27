#### BOOKS #####

class Book

  @@on_shelf = []

  @@on_loan = []

  def initialize (title, author, isbn)
      @title = title
      @author = author
      @isbn = isbn
  end

  def self.create (title, author, isbn)
      book=Book.new(title, author, isbn)
      @@on_shelf << book
      return book
  end

  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

  def lent_out?
    return @@on_loan.include?(self)
  end

  def self.browse
    random_book = @@on_shelf.sample
    return random_book
  end

  def borrow
    if lent_out?
      return false
    else
      @@on_loan << self
      @@on_shelf.delete(self)
      @due_date = current_due_date

      return true
    end
  end

  def return_to_library

  end

  def current_due_date
    due_date = Time.now+(60 * 60 * 48)
    return due_date
  end

  def self.overdue_books

  end

  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end
end

book1 = Book.create("title1", "author1", 111)
book2 = Book.create("title2", "author2", 112)


p book1.lent_out?
