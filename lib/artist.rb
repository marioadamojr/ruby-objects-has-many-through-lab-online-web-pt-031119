class Artist
  attr_accessor :name

  @@all = []

  def initialize
  end

  def self.all
    @@all
  end
end
