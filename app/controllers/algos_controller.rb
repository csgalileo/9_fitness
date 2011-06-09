class AlgosController < ApplicationController
  # GET /algos
  # GET /algos.xml
  def index
    @algos = Algo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @algos }
    end
  end

  # GET /algos/1
  # GET /algos/1.xml
  def show
    @algo = Algo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @algo }
    end
  end

  # GET /algos/new
  # GET /algos/new.xml
  def new
    @algo = Algo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @algo }
    end
  end

  # GET /algos/1/edit
  def edit
    @algo = Algo.find(params[:id])
  end

  # POST /algos
  # POST /algos.xml
  def create
    @algo = Algo.new(params[:algo])

    respond_to do |format|
      if @algo.save
        format.html { redirect_to(@algo, :notice => 'Algo was successfully created.') }
        format.xml  { render :xml => @algo, :status => :created, :location => @algo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @algo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /algos/1
  # PUT /algos/1.xml
  def update
    @algo = Algo.find(params[:id])

    respond_to do |format|
      if @algo.update_attributes(params[:algo])
        format.html { redirect_to(@algo, :notice => 'Algo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @algo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /algos/1
  # DELETE /algos/1.xml
  def destroy
    @algo = Algo.find(params[:id])
    @algo.destroy

    respond_to do |format|
      format.html { redirect_to(algos_url) }
      format.xml  { head :ok }
    end
  end
end
