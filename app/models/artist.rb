class Artist < ApplicationRecord
    has_many :albums # artist.albums
    has_many :songs, through: :albums
end
