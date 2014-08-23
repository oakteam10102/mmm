class StaticPagesController < ApplicationController
  def index
    @links = FileLink.where(shown: true)
  end
end
