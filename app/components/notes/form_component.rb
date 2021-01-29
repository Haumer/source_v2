class Notes::FormComponent < ViewComponent::Base
  def initialize(note: Note.new, dashboard:)
    @note = note
    @dashboard = dashboard
  end

  def render?
    @note.present?
  end

  private

  attr_reader :note, :dashboard
end
