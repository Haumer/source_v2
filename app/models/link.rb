class Link < ApplicationRecord
  after_create :get_meta_tags

  def get_meta_tags
    page = MetaInspector.new(url)
  end
end
