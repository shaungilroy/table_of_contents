class TextBookController < ApplicationController
  def table_of_contents
    @book_id = '35880'

    book_info = BookFetch.new(@book_id)
    @book_toc = JSON.parse(book_info.book_table_of_contents)
  end
end
