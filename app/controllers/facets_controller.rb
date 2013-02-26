class FacetsController < ApplicationController
  # GET /facets
  # GET /facets.json
  def index
    @facets = Facet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facets }
    end
  end

  # GET /facets/1
  # GET /facets/1.json
  def show
    @facet = Facet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facet }
    end
  end

  # GET /facets/new
  # GET /facets/new.json
  def new
    @facet = Facet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facet }
    end
  end

  # GET /facets/1/edit
  def edit
    @facet = Facet.find(params[:id])
  end

  # POST /facets
  # POST /facets.json
  def create
    @facet = Facet.new(params[:facet])

    respond_to do |format|
      if @facet.save
        format.html { redirect_to @facet, notice: 'Facet was successfully created.' }
        format.json { render json: @facet, status: :created, location: @facet }
      else
        format.html { render action: "new" }
        format.json { render json: @facet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facets/1
  # PUT /facets/1.json
  def update
    @facet = Facet.find(params[:id])

    respond_to do |format|
      if @facet.update_attributes(params[:facet])
        format.html { redirect_to @facet, notice: 'Facet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facets/1
  # DELETE /facets/1.json
  def destroy
    @facet = Facet.find(params[:id])
    @facet.destroy

    respond_to do |format|
      format.html { redirect_to facets_url }
      format.json { head :no_content }
    end
  end
end
