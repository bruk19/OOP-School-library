require 'json'

module Preserve_books

    #store books method

    def store_book(books)
        data = []
        file = './store/book.json'

        !(File.exists?(file) && File.read(file) != '') &&
        File.write(file, '[]')
        return unless File.exist?(file)

        books.each do |book|
            data << {title:book.title, author: book.author}
        end
        File.write(file, JSON.generate(data))
    end

