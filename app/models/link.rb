class Link < ApplicationRecord
  after_create :get_meta_tags, :get_favicon

  def get_meta_tags
    begin
      page = MetaInspector.new(url)

      self.title = page.title
      self.image = page.meta_tags['property']['og:image'].first
      save
    rescue Exception => e
      puts e
      puts 'Invalid URL for Link'
    end
  end

  def get_favicon
    host = URI(url).host
    self.favicon = "#{host}/favicon.ico"
    save
  end
end
