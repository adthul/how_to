class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  before_action :guide

  def index
    @steps = guide.steps
    @id = guide.id
  end

  def show
    @step = guide.steps.find(params[:id])
  end

  def new
    @step = guide.steps.build
  end

  def edit
    @step = guide.steps.find(params[:id])
  end

  def create
    @step = guide.steps.create(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to([@step.guide, @step], notice: 'Step was successfully created.') }
        format.json { render action: 'show', status: :created, location: [@step.guide, @step] }
      else
        format.html { render action: 'new' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @step = guide.steps.find(step_params)

    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to [@step.guide, @step], notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step = guide.steps.find(params[:step])

    @step.destroy
    respond_to do |format|
      format.html { redirect_to guide_steps_url }
      format.json { head :no_content }
    end
  end

  private
    def guide
      Guide.find(params[:guide_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:step_number, :step_name, :content)
    end

    def set_step
      @step = Step.find(params[:id])
    end
end
