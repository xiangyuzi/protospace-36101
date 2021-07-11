class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image  #Active Storageのテーブルとのアソシエーション。has_one_attachedを記述したモデルの各レコードは1つのファイルを添付できる。
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
