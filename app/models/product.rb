class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_items

  validates :title, :description, :image_url, :category_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with:
          %r{\.(gif|jpg|jpeg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

  before_destroy :ensure_not_referenced_by_any_line_item

  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end

    def self.search(search)
      where("title LIKE ?", "%#{search}%")
    end


end
