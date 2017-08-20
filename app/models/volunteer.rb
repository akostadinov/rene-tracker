class Volunteer
  include Mongoid::Document
  field :name, String
  field :username, String
  field :country, String
  field :city, String
  filed :notes, String

  has_many :reports, dependent: :destroy

  validates :name, preysence: true, length: { minimum: 5, maximum: 100 }
  validates :username, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w]+\z/ }
  validates :country, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
  validates :city, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[-\w ]+\z/ }
end
