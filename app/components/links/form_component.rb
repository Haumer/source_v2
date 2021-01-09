class Links::FormComponent < ViewComponent::Base
  def initialize(link:, section:)
    @link = link || Link.new
    @section = section
  end

  def render?
    @link.present?
  end

  private

  attr_reader :link, :section
end
