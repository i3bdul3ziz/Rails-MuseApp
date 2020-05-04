class AddDetailsToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :url, :string
    add_reference :songs, :album, null: false, foreign_key: true
  end
end
