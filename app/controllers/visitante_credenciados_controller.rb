class VisitanteCredenciadosController < InheritedResources::Base
  
  
  
  # GET /visitante_credenciados
  # GET /visitante_credenciados.json
  def index
    @visitante_credenciados = VisitanteCredenciado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitante_credenciados }
    end
  end

  # GET /visitante_credenciados/1
  # GET /visitante_credenciados/1.json
  def show
    @visitante_credenciado = VisitanteCredenciado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visitante_credenciado }
    end
  end

  # GET /visitante_credenciados/new
  # GET /visitante_credenciados/new.json
  def new
    @visitante_credenciado = VisitanteCredenciado.new
    @visitante_credenciado.usuario = current_usuario

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitante_credenciado }
    end
  end

  # GET /visitante_credenciados/1/edit
  def edit
    @visitante_credenciado = VisitanteCredenciado.find(params[:id])
  end

  # POST /visitante_credenciados
  # POST /visitante_credenciados.json
  def create
    @visitante_credenciado = VisitanteCredenciado.new(params[:visitante_credenciado])
    @visitante_credenciado.usuario = current_usuario

    respond_to do |format|
      if @visitante_credenciado.save
        format.html { redirect_to @visitante_credenciado, notice: 'Jogo was successfully created.' }
        format.json { render json: @visitante_credenciado, status: :created, location: @visitante_credenciado }
      else
        format.html { render action: "new" }
        format.json { render json: @visitante_credenciado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visitante_credenciados/1
  # PUT /visitante_credenciados/1.json
  def update
    @visitante_credenciado = VisitanteCredenciado.find(params[:id])

    respond_to do |format|
      if @visitante_credenciado.update_attributes(params[:visitante_credenciado])
        format.html { redirect_to @visitante_credenciado, notice: 'Jogo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visitante_credenciado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitante_credenciados/1
  # DELETE /visitante_credenciados/1.json
  def destroy
    @visitante_credenciado = VisitanteCredenciado.find(params[:id])
    @visitante_credenciado.destroy

    respond_to do |format|
      format.html { redirect_to visitante_credenciados_url }
      format.json { head :no_content }
    end
  
  end
end