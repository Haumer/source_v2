class Notes::CardComponent < ViewComponent::Base
  with_collection_parameter :note

  def initialize(note:)
    @note = note
  end

  def render?
    @note.present?
  end

  private

  attr_reader :note
end
