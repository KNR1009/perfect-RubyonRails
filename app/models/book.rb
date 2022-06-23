class Book < ApplicationRecord
  belongs_to :publisher
  scope :costly, -> {where("price >? ",100)}
  scope :written_about, -> (theme) {where("name like ?", "%#{theme}%")}


  #  本と著者の中間テーブル(多:多)
  has_many :book_authors
  has_many :auhtors, through: :book_authors
end
