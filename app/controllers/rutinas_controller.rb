class RutinasController < ApplicationController
  # GET /rutinas
  # GET /rutinas.xml
  def index
    @rutinas = Rutina.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rutinas }
    end
  end

  # GET /rutinas/1
  # GET /rutinas/1.xml
  def show
    @rutina = Rutina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rutina }
    end
  end

  # GET /rutinas/new
  # GET /rutinas/new.xml
  def new
    @rutina = Rutina.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rutina }
    end
  end

  # GET /rutinas/1/edit
  def edit
    @rutina = Rutina.find(params[:id])
  end

  # POST /rutinas
  # POST /rutinas.xml
  def create

   #@rutina = Rutina.new(params[:rutina])

    #respond_to do |format|
    #  if @rutina.save
    #    format.html { redirect_to(@rutina, :notice => 'Rutina was successfully created.') }
     #   format.xml  { render :xml => @rutina, :status => :created, :location => @rutina }
     # else
     #   format.html { render :action => "new" }
     #   format.xml  { render :xml => @rutina.errors, :status => :unprocessable_entity }
     # end
    #end
	
	@usuario = Usuario.find(params[:usuario_id])
	@rutina = @usuario.rutinas.build(params[:rutina])
	@rutina.save
	redirect_to @usuario
  end

  # PUT /rutinas/1
  # PUT /rutinas/1.xml
  def update
    @rutina = Rutina.find(params[:id])

    respond_to do |format|
      if @rutina.update_attributes(params[:rutina])
        format.html { redirect_to(@rutina, :notice => 'Rutina was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rutina.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rutinas/1
  # DELETE /rutinas/1.xml
  def destroy
    @rutina = Rutina.find(params[:id])
    @rutina.destroy

    respond_to do |format|
      format.html { redirect_to(rutinas_url) }
      format.xml  { head :ok }
    end
  end
end
