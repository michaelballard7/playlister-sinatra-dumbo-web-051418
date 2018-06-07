module Slug

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.class.all.find{|item| item.slug == slug}
  end

end
