class PagesController < ApplicationController
  def index
  	  @image_headers = Imageheader.all
  	  @jordans = Jordan.last(3)
  	  @courses = Course.last(3)
  end
end
