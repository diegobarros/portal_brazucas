class AnunciantesController < InheritedResources::Base
  
  # GET /anunciantes
  # GET /anunciantes.json
  def index
    @anunciantes = Anunciante.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anunciantes }
    end
  end

  # GET /anunciantes/1
  # GET /anunciantes/1.json
  def show
    @anunciante = Anunciante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anunciante }
    end
  end

  # GET /anunciantes/new
  # GET /anunciantes/new.json
  def new
    @anunciante = Anunciante.new
    @anunciante.usuario = current_usuario

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anunciante }
    end
  end

  # GET /anunciantes/1/edit
  def edit
    @anunciante = Anunciante.find(params[:id])
  end

  # POST /anunciantes
  # POST /anunciantes.json
  def create
    @anunciante = Anunciante.new(params[:anunciante])
    @anunciante.usuario = current_usuario

    respond_to do |format|
      if @anunciante.save
        format.html { redirect_to @anunciante, notice: 'Jogo was successfully created.' }
        format.json { render json: @anunciante, status: :created, location: @anunciante }
      else
        format.html { render action: "new" }
        format.json { render json: @anunciante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anunciantes/1
  # PUT /anunciantes/1.json
  def update
    @anunciante = Anunciante.find(params[:id])

    respond_to do |format|
      if @anunciante.update_attributes(params[:anunciante])
        format.html { redirect_to @anunciante, notice: 'Jogo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anunciante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anunciantes/1
  # DELETE /anunciantes/1.json
  def destroy
    @anunciante = Anunciante.find(params[:id])
    @anunciante.destroy

    respond_to do |format|
      format.html { redirect_to anunciantes_url }
      format.json { head :no_content }
    end
  
  end
  
  
end
