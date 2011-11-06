class QuestiontypesController < ApplicationController
  # GET /questiontypes
  # GET /questiontypes.json
  def index
    @questiontypes = Questiontype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questiontypes }
    end
  end

  # GET /questiontypes/1
  # GET /questiontypes/1.json
  def show
    @questiontype = Questiontype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questiontype }
    end
  end

  # GET /questiontypes/new
  # GET /questiontypes/new.json
  def new
    @questiontype = Questiontype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questiontype }
    end
  end

  # GET /questiontypes/1/edit
  def edit
    @questiontype = Questiontype.find(params[:id])
  end

  # POST /questiontypes
  # POST /questiontypes.json
  def create
    @questiontype = Questiontype.new(params[:questiontype])

    respond_to do |format|
      if @questiontype.save
        format.html { redirect_to @questiontype, notice: 'Questiontype was successfully created.' }
        format.json { render json: @questiontype, status: :created, location: @questiontype }
      else
        format.html { render action: "new" }
        format.json { render json: @questiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questiontypes/1
  # PUT /questiontypes/1.json
  def update
    @questiontype = Questiontype.find(params[:id])

    respond_to do |format|
      if @questiontype.update_attributes(params[:questiontype])
        format.html { redirect_to @questiontype, notice: 'Questiontype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @questiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questiontypes/1
  # DELETE /questiontypes/1.json
  def destroy
    @questiontype = Questiontype.find(params[:id])
    @questiontype.destroy

    respond_to do |format|
      format.html { redirect_to questiontypes_url }
      format.json { head :ok }
    end
  end
end
