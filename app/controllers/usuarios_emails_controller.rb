class UsuariosEmailsController < ApplicationController
  before_action :set_usuarios_email, only: [:show, :edit, :update, :destroy]

  # GET /usuarios_emails
  # GET /usuarios_emails.json
  def index
    @usuarios_emails = UsuariosEmail.all
  end

  # GET /usuarios_emails/1
  # GET /usuarios_emails/1.json
  def show
  end
 
  def enviarCorreo
    #Creamos un usuario
    @usuario = UsuariosEmail.create({nombre:'Andres Vedia', email:'velasdia@hotmail.com', identificador:'1234'})
    #Llamamos al ActionMailer que creamos
    CorreoElectronico.email_bienvenida(@usuario).deliver
    #Mostramos el usuario en formato JSON
    render json: @usuario
  end

  # GET /usuarios_emails/new
  def new
    @usuarios_email = UsuariosEmail.new
  end

  # GET /usuarios_emails/1/edit
  def edit
  end

  # POST /usuarios_emails
  # POST /usuarios_emails.json
  def create
    @usuarios_email = UsuariosEmail.new(usuarios_email_params)

    respond_to do |format|
      if @usuarios_email.save
        format.html { redirect_to @usuarios_email, notice: 'Usuarios email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usuarios_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @usuarios_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios_emails/1
  # PATCH/PUT /usuarios_emails/1.json
  def update
    respond_to do |format|
      if @usuarios_email.update(usuarios_email_params)
        format.html { redirect_to @usuarios_email, notice: 'Usuarios email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuarios_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios_emails/1
  # DELETE /usuarios_emails/1.json
  def destroy
    @usuarios_email.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuarios_email
      @usuarios_email = UsuariosEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuarios_email_params
      params.require(:usuarios_email).permit(:nombre, :email, :identificador)
    end
end
