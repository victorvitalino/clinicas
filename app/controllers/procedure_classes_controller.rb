class ProcedureClassesController < ApplicationController
  before_action :set_procedure_class, only: [:show, :edit, :update, :destroy]

  # GET /procedure_classes
  # GET /procedure_classes.json
  def index
    @procedure_classes = ProcedureClass.all
  end

  # GET /procedure_classes/1
  # GET /procedure_classes/1.json
  def show
  end

  # GET /procedure_classes/new
  def new
    @procedure_class = ProcedureClass.new
  end

  # GET /procedure_classes/1/edit
  def edit
  end

  # POST /procedure_classes
  # POST /procedure_classes.json
  def create
    @procedure_class = ProcedureClass.new(procedure_class_params)

    respond_to do |format|
      if @procedure_class.save
        format.html { redirect_to @procedure_class, notice: 'Procedure class was successfully created.' }
        format.json { render :show, status: :created, location: @procedure_class }
      else
        format.html { render :new }
        format.json { render json: @procedure_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedure_classes/1
  # PATCH/PUT /procedure_classes/1.json
  def update
    respond_to do |format|
      if @procedure_class.update(procedure_class_params)
        format.html { redirect_to @procedure_class, notice: 'Procedure class was successfully updated.' }
        format.json { render :show, status: :ok, location: @procedure_class }
      else
        format.html { render :edit }
        format.json { render json: @procedure_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedure_classes/1
  # DELETE /procedure_classes/1.json
  def destroy
    @procedure_class.destroy
    respond_to do |format|
      format.html { redirect_to procedure_classes_url, notice: 'Procedure class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure_class
      @procedure_class = ProcedureClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_class_params
      params.require(:procedure_class).permit(:procedure_class_name, :procedure_type_id)
    end
end
