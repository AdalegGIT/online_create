class PicturesController < ApplicationController
  
  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
   # render text: "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  @pic = Picture.new
  @pic.artist = params[:artist]
  @pic.url = params[:url]
  @pic.title = params[:title]
  if @pic.save
    # if the save for the picture was successful, go to index.html.erb
    redirect_to pictures_url
    
  else
    # otherwise render the view associated with the action :new (i.e. new.html.erb)
    render :new
  end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @picture = Picture.find(params[:id])
  end


end
