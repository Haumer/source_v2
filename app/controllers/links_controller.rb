class LinksController < ApplicationController
  def create
    @link = Link.new(link_params)
    @link.section = Section.find(params[:section_id])
    if @link.save!
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Success!"
    else
      flash[:notice] = "Something went wrong!"
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
