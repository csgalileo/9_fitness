class DietasController < ApplicationController
  # GET /dietas
  # GET /dietas.xml
  def index
    @dietas = Dieta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dietas }
    end
  end

  # GET /dietas/1
  # GET /dietas/1.xml
  def show
    @dieta = Dieta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dieta }
    end
  end

  # GET /dietas/new
  # GET /dietas/new.xml
  def new
    @dieta = Dieta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dieta }
    end
  end

  # GET /dietas/1/edit
  def edit
    @dieta = Dieta.find(params[:id])
  end

  # POST /dietas
  # POST /dietas.xml
  def create
    #@dieta = Dieta.new(params[:dieta])
	#@usuario = Usuario.find(params[:usuario_id])
    #respond_to do |format|
    #  if @dieta.save
    #    format.html { redirect_to(@dieta, :notice => 'Dieta was successfully created.') }
    #    format.xml  { render :xml => @dieta, :status => :created, :location => @dieta }
    #  else
    #    format.html { render :action => "new" }
    #    format.xml  { render :xml => @dieta.errors, :status => :unprocessable_entity }
    #  end
    #end
	@usuario = Usuario.find(params[:usuario_id])
	@dieta = @usuario.dietas.build(params[:dieta])
	@dieta.save
	redirect_to @usuario
  end

  # PUT /dietas/1
  # PUT /dietas/1.xml
  def update
    @dieta = Dieta.find(params[:id])

    respond_to do |format|
      if @dieta.update_attributes(params[:dieta])
        format.html { redirect_to(@dieta, :notice => 'Dieta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dieta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dietas/1
  # DELETE /dietas/1.xml
  def destroy
    @dieta = Dieta.find(params[:id])
    @dieta.destroy

    respond_to do |format|
      format.html { redirect_to(dietas_url) }
      format.xml  { head :ok }
    end
  end
end
