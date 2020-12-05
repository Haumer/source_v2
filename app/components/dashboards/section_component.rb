class Dashboards::SectionComponent < ViewComponent::Base
  def initialize(section:)
    @section = section
  end

  private

  attr_reader :section
end
