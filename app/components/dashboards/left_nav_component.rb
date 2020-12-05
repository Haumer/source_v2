class Dashboards::LeftNavComponent < ViewComponent::Base
  def initialize(dashboard:)
    @dashboard = dashboard
  end

  private

  attr_reader :dashboard
end
