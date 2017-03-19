class ChapterController < ApplicationController
  def index
    @entries = ContentfulChapter.all.load
  end
  def show
  	@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @entry = ContentfulChapter.find(params[:id])
  end
end
