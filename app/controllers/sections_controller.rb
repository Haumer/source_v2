class SectionsController < ApplicationController
  def move
    @section = Section.find(params[:id])
    @section.insert_at(params[:position].to_i)
    @section.save
    head :ok
  end
end
