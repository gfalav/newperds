class DistribuidorasController < ApplicationController
  # GET /distribuidoras
  # GET /distribuidoras.xml
  def index
    @distribuidoras = Distribuidora.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @distribuidoras }
    end
  end

  # GET /distribuidoras/1
  # GET /distribuidoras/1.xml
  def show
    @distribuidora = Distribuidora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @distribuidora }
    end
  end

  # GET /distribuidoras/new
  # GET /distribuidoras/new.xml
  def new
    @distribuidora = Distribuidora.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @distribuidora }
    end
  end

  # GET /distribuidoras/1/edit
  def edit
    @distribuidora = Distribuidora.find(params[:id])
  end

  # POST /distribuidoras
  # POST /distribuidoras.xml
  def create
    @distribuidora = Distribuidora.new(params[:distribuidora])

    respond_to do |format|
      if @distribuidora.save
        format.html { redirect_to(@distribuidora, :notice => 'Distribuidora was successfully created.') }
        format.xml  { render :xml => @distribuidora, :status => :created, :location => @distribuidora }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @distribuidora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /distribuidoras/1
  # PUT /distribuidoras/1.xml
  def update
    @distribuidora = Distribuidora.find(params[:id])

    respond_to do |format|
      if @distribuidora.update_attributes(params[:distribuidora])
        format.html { redirect_to(@distribuidora, :notice => 'Distribuidora was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @distribuidora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /distribuidoras/1
  # DELETE /distribuidoras/1.xml
  def destroy
    @distribuidora = Distribuidora.find(params[:id])
    @distribuidora.destroy

    respond_to do |format|
      format.html { redirect_to(distribuidoras_url) }
      format.xml  { head :ok }
    end
  end
end
