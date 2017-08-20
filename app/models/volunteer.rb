class Volunteer
  include Mongoid::Document

  has_many :reports
end
