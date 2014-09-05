json.array!(@books) do |book|
  json.extract! book, :id, :book_name, :book_level, :total_words, :words_wrong, :self_corrections
  json.url book_url(book, format: :json)
end
