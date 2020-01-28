class Quote < ApplicationRecord
  validates :content, :author, :presence => true

  scope :search, -> (author_parameter) { where("author like ?", "%#{author_parameter}%")}
end
