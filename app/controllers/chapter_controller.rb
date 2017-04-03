class ChapterController < ApplicationController
  def index
    @entries = ContentfulChapter.all.load
    @test_string = "This is a test"
  end
  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @entry = ContentfulChapter.find(params[:id])
  end
end
