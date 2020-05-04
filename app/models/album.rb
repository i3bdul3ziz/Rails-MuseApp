class Album < ApplicationRecord
  belongs_to :artist #album.artist
  has_many :songs
end
