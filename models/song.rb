class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true
  validates_length_of :year, numericality: true, within: 2..4
  validates_length_of :track_number, numericality: true, within: 1..3
  validates :genre, presence: true
  validates_length_of :length_in_seconds, numericality: true, within: 1..4
  validates :image, format: { with: /\.(png|jpg)\Z/i }
end
