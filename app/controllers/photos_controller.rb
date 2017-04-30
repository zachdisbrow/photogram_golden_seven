class PhotosController < ApplicationController

# def Home
#   render("home_age.html.erb")
# end
def new_form
render("photos/new_form.html.erb")
end
def index
@all_photos = photo.all.order({:created_at => :desc})
  render("index.html.erb")
end
def create_row
#  render("create_row.html.erb")
# the params look like {"the_image_url"=>"https://www."}

  p = Photo.new
  p.source = params["the_image_url"]
  p.caption = params["the_caption"]
  p.save
  redirect_to("/photos")

end
  def show
    # the params hash looks like this: {"the_id_number""=>1"}

id_number = params["id_number"]
    p = Photo.find(id_number)

    @the_caption = p.caption
    @the_image_url = p.source
  @created_at = p.created_at
#@photo = p
render("photos/show.html.erb")
  end
  def update_row
    @photo = Photo.find(params[:the_id])
    p.source = params[:the_source]
    p.caption = params[:the_source]
      p.save
    redirect_to("/photos")
  end
end
