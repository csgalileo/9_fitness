class NuevoUsuariosController < ApplicationController
  # GET /nuevo_usuarios
  # GET /nuevo_usuarios.xml
  def index
    @nuevo_usuarios = NuevoUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nuevo_usuarios }
    end
  end

  # GET /nuevo_usuarios/1
  # GET /nuevo_usuarios/1.xml
  def show
    @nuevo_usuario = NuevoUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nuevo_usuario }
    end
  end

  # GET /nuevo_usuarios/new
  # GET /nuevo_usuarios/new.xml
  def new
    @nuevo_usuario = NuevoUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nuevo_usuario }
    end
  end

  # GET /nuevo_usuarios/1/edit
  def edit
    @nuevo_usuario = NuevoUsuario.find(params[:id])
  end

  # POST /nuevo_usuarios
  # POST /nuevo_usuarios.xml
  def create
    @nuevo_usuario = NuevoUsuario.new(params[:nuevo_usuario])

    respond_to do |format|
      if @nuevo_usuario.save
        format.html { redirect_to(@nuevo_usuario, :notice => 'Nuevo usuario was successfully created.') }
        format.xml  { render :xml => @nuevo_usuario, :status => :created, :location => @nuevo_usuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nuevo_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nuevo_usuarios/1
  # PUT /nuevo_usuarios/1.xml
  def update
    @nuevo_usuario = NuevoUsuario.find(params[:id])

    respond_to do |format|
      if @nuevo_usuario.update_attributes(params[:nuevo_usuario])
        format.html { redirect_to(@nuevo_usuario, :notice => 'Nuevo usuario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nuevo_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nuevo_usuarios/1
  # DELETE /nuevo_usuarios/1.xml
  def destroy
    @nuevo_usuario = NuevoUsuario.find(params[:id])
    @nuevo_usuario.destroy

    respond_to do |format|
      format.html { redirect_to(nuevo_usuarios_url) }
      format.xml  { head :ok }
    end
  end
end
