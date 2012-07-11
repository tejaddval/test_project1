class CyclesController < ApplicationController
  # GET /cycles
  # GET /cycles.xml
  def index
    @cycles = Cycle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cycles }
    end
  end

  # GET /cycles/1
  # GET /cycles/1.xml
  def show
    @cycle = Cycle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cycle }
    end
  end

  # GET /cycles/new
  # GET /cycles/new.xml
  def new
    @cycle = Cycle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cycle }
    end
  end

  # GET /cycles/1/edit
  def edit
    @cycle = Cycle.find(params[:id])
  end

  # POST /cycles
  # POST /cycles.xml
  def create
    @cycle = Cycle.new(params[:cycle])

    respond_to do |format|
      if @cycle.save
        format.html { redirect_to(@cycle, :notice => 'Cycle was successfully created.') }
        format.xml  { render :xml => @cycle, :status => :created, :location => @cycle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cycle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cycles/1
  # PUT /cycles/1.xml
  def update
    @cycle = Cycle.find(params[:id])

    respond_to do |format|
      if @cycle.update_attributes(params[:cycle])
        format.html { redirect_to(@cycle, :notice => 'Cycle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cycle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cycles/1
  # DELETE /cycles/1.xml
  def destroy
    @cycle = Cycle.find(params[:id])
    @cycle.destroy

    respond_to do |format|
      format.html { redirect_to(cycles_url) }
      format.xml  { head :ok }
    end
  end
end
