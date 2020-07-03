class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :item_images
  has_many :comments, dependent: :destroy
  has_many :evaluations
  has_many :favorites
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :user
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :postage_payer
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :name, :introduction, :price, :size, :condition, :deal_state,
            :prefecture_id, :preparation_day_id, :postage_payer_id, presence: true
end