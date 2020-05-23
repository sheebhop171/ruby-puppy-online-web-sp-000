require 'pry'

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    binding.pry
    @@all.each do |name|
      puts "#{name}"
    end
  end

end
