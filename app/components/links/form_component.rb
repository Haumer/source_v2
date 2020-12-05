class Links::FormComponent < ViewComponent::Base
  def initialize(link:)
    @link = link || Link.new
  end

  private

  attr_reader :link
end
