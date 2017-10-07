class Volunteer
  include Mongoid::Document

  field :name, type: String
  field :username, type: String
  field :country, type: String
  field :city, type: String
  field :notes, type: String

  has_many :reports, dependent: :destroy

  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :username, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w]+\z/ }
  validates :country, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
  validates :city, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
end
