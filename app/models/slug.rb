module Slug

  module Ify
    def slug
      self.name.downcase.gsub(' ','-').gsub(/[^0-9A-Z-]/i,'')
    end
  end

  module Find
    def find_by_slug(slug)
      self.all.select{|item| item[:name].downcase.gsub(' ','-').gsub(/[^0-9A-Z-]/i,'') == slug}.first
    end
  end
end
