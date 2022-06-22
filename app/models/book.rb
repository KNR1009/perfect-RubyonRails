class Book < ApplicationRecord
  scope :costly, -> {where("price >? ",100)}
  scope :written_about, -> (theme) {where("name like ?", "%#{theme}%")}
end
