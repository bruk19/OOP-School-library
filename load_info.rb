require 'json'

def init_files
    File.write('./store/books.json', '[]') unless File.exist?('./store/books.json')
end