class ChapterController < ApplicationController
  def index
    @entries = ContentfulChapter.all.load
  end
  def show
    @entry = ContentfulChapter.find(params[:id])
  end
end
