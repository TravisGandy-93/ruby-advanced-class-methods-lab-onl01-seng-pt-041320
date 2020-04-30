class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
      self.all << Song.new 
      self.all.last 
  end 
  
  def self.new_by_name(song_title)
      song = Song.new
      song.name = song_title
      song 
  end 
  
  def self.create_by_name(song)
      new_song = Song.create
      new_song.name= song 
      new_song
  end 
  
  def self.find_by_name 
      self.all.find{|person| person.name == name}
  end 

end
