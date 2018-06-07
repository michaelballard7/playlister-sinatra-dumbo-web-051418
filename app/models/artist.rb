require_relative './concerns/slug.rb'

class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|item| item.slug == slug}
  end

end
