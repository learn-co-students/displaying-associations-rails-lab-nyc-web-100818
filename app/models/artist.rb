class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    total_songs = 0
    self.songs.each do |song|
      total_songs +=1
  end
    total_songs
  end

end # end of Artist class
