class Links::CardComponent < ViewComponent::Base
  with_collection_parameter :link

  def initialize(link:)
    @link = link
  end
end
