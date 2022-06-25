class Book < ApplicationRecord
  belongs_to :publisher
  scope :costly, -> {where("price >? ",100)}
  scope :written_about, -> (theme) {where("name like ?", "%#{theme}%")}


  #  本と著者の中間テーブル(多:多)
  has_many :book_authors
  has_many :auhtors, through: :book_authors

  # バリデーション
  validates :name, presence: true
  validates :name, length: { maximum: 10 }
  validates :price, numericality: { greater_than: 100 }

  # enumによる変換
  enum sales_satus: {
    reservation: 0, # 予約受付
    now_on_sale: 1, # 発売中
    end_of_prit: 2, # 販売終了
  }
end
