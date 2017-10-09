class Volunteer
  include Mongoid::Document

  field :name, type: String
  field :username, type: String
  field :country, type: String
  field :city, type: String
  field :postal_code, type: String
  field :notes, type: String

  has_many :reports, dependent: :destroy

  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :username, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w]+\z/ }
  validates :country, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
  validates :city, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
  validates :postal_code, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }

  # scope :like, -> (filter) { where("namespace like ? OR resource like ? OR owner like ?", "%#{filter}%", "%#{filter}%", "%#{filter}%")}
end
