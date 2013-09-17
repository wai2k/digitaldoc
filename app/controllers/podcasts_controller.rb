require 'digest/sha1'

class PodcastsController < ApplicationController

  before_filter :authenticate, except: [:show, :index]

  # GET /podcasts
  # GET /podcasts.json
  def index
    @podcasts = Podcast.order('created_at DESC')
  end

  # GET /podcasts/1
  # GET /podcasts/1.json
  def show
    @podcast = Podcast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @podcast }
    end
  end

  # GET /podcasts/new
  # GET /podcasts/new.json
  def new
    @podcast = Podcast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @podcast }
    end
  end

  # GET /podcasts/1/edit
  def edit
    @podcast = Podcast.find(params[:id])
  end

  # POST /podcasts
  # POST /podcasts.json
  def create
    @podcast = Podcast.new(params[:podcast])

    respond_to do |format|
      if @podcast.save
        format.html { redirect_to @podcast, notice: 'Podcast was successfully created.' }
        format.json { render json: @podcast, status: :created, location: @podcast }
      else
        format.html { render action: "new" }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /podcasts/1
  # PUT /podcasts/1.json
  def update
    @podcast = Podcast.find(params[:id])

    respond_to do |format|
      if @podcast.update_attributes(params[:podcast])
        format.html { redirect_to @podcast, notice: 'Podcast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podcasts/1
  # DELETE /podcasts/1.json
  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy

    respond_to do |format|
      format.html { redirect_to podcasts_url }
      format.json { head :no_content }
    end
  end

  private
    def authenticate
      if user = authenticate_with_http_basic { |u, p| u == "frodo" && Digest::SHA1.hexdigest(p) == "903b51645b6b351cc124d357fcd3d22af32cce73"}
        return true
      else
        request_http_basic_authentication
      end
    end
end

