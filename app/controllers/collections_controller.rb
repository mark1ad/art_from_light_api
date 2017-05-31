class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :update, :destroy, :pictures, :picture_add]

  # GET /collections
  def index
    @collections = Collection.all

    render json: @collections.to_json(include: :user)
  end

  # GET /collections/1
  def show
    render json: @collection
  end

  # Get /collections/users/1
  def users
    @collections = Collection.where(user_id:  params[:id])

    render json: @collections
  end

  # GET /collections/1/pictures
  # Get pictures in a collections
  def pictures
    render json: @collection.pictures
  end

  # POST /collections
  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      render json: @collection, status: :created, location: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # POST /collections/1/picture_add
  # Add a picture to a collection
  def picture_add

    picIds = params[:picture_id].split(",")
    picIds.each do |id|
      @picture = Picture.find(id)
      @collection.pictures << @picture
    end

    render json: @collection
  end

  # PATCH/PUT /collections/1
  def update
    if @collection.update(collection_params)
      render json: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collections/1
  def destroy
    @collection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collection_params
      params.require(:collection).permit(:title, :description, :user_id)
    end
end
