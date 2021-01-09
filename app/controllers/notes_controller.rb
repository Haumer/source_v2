class NotesController < ApplicationController
  before_action :set_note, only: [ :edit, :update ]

  def create
    @note = Note.new(note_params)
    section = Section.find(params[:section_id])
    @note.section = section
    if note.save!
      redirect_back(fallback_location: section.dashboard)
      flash[:notice] = "Success!"
    else
      flash[:notice] = "Something went wrong!"
    end
  end

  def edit

  end

  def update

  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end
