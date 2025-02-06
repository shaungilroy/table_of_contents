require 'httparty'

class BookFetch
    include HTTParty
    # https://s3.amazonaws.com/tocs.flatworldknowledge.com/:book_id.json
    # ie: https://s3.amazonaws.com/tocs.flatworldknowledge.com/35880.json
    base_uri 'https://s3.amazonaws.com/tocs.flatworldknowledge.com/'
  
    def initialize(book_id)
        @book_id = book_id
    end
  
    def book_table_of_contents
      self.class.get("/#{@book_id}.json")
    end
  
  end
