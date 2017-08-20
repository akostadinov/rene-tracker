class Report
  include Mongoid::Document
  field :date, type: DateTime
  field :rc, type: Integer
  field :ec, type: Integer
  field :rm, type: Integer
  field :comment, type: String

  belongs_to :volunteer
end
