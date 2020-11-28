class SectionsController < ApplicationController
  def move
    # binding.pry
    @section = Section.find(params[:id])
    @section.insert_at(params[:position].to_i)
    head :ok
  end
end
