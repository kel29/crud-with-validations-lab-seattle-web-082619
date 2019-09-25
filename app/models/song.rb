class Song < ApplicationRecord
  include ActiveModel::Validations
  validates_with ReleaseYearValidator
  validates_with DoubleSongValidator
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year.to_i, allow_nil: true}
  validates :artist_name, presence: true

end
