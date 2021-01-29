class Links::FormComponent < ViewComponent::Base
  def initialize(link: Link.new, section:)
    @link = link
    @section = section
  end

  def render?
    @link.present?
  end

  private

  attr_reader :link, :section
end
