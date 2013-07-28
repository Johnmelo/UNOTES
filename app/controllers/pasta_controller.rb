class PastaController < ApplicationController
  # GET /pasta
  # GET /pasta.json
  before_filter :authenticate_user
  def index
    @pasta = Pastum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pasta }
    end
  end

  # GET /pasta/1
  # GET /pasta/1.json
  def show
    @pastum = Pastum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pastum }
    end
  end

  # GET /pasta/new
  # GET /pasta/new.json
  def new
    @pastum = Pastum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pastum }
    end
  end

  # GET /pasta/1/edit
  def edit
    @pastum = Pastum.find(params[:id])
  end

  # POST /pasta
  # POST /pasta.json
  def create
    @pastum = Pastum.new(params[:pastum])

    respond_to do |format|
      if @pastum.save
        format.html { redirect_to @pastum, notice: 'Pastum was successfully created.' }
        format.json { render json: @pastum, status: :created, location: @pastum }
      else
        format.html { render action: "new" }
        format.json { render json: @pastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pasta/1
  # PUT /pasta/1.json
  def update
    @pastum = Pastum.find(params[:id])

    respond_to do |format|
      if @pastum.update_attributes(params[:pastum])
        format.html { redirect_to @pastum, notice: 'Pastum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasta/1
  # DELETE /pasta/1.json
  def destroy
    @pastum = Pastum.find(params[:id])
    @pastum.destroy

    respond_to do |format|
      format.html { redirect_to pasta_url }
      format.json { head :no_content }
    end
  end
end
