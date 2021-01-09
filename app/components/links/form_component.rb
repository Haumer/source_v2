class Links::FormComponent < ViewComponent::Base
  def initialize(link:, section:)
    @link = link || Link.new
  end

  def render?
    @link.present?
  end

  private

  attr_reader :link
end
