require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name

    @@all << self
  end
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    name = self.new
    self.name = name
    name.save
    self.all.include?(name)
  end

  def self.new_by_name(song)

  end
end

hello = Song.create("hello")

by_name = Song.new_by_name("By Name")
