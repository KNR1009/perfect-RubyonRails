class Author < ApplicationRecord
    #  本と著者の中間テーブル(多:多)
    has_many :book_authors
    has_many :books, through: :book_authors
end
