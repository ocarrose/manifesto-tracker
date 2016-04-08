class ManifestoPromisesController < ApplicationController
  before_action :set_manifesto_promise, only: [:show, :edit, :update, :destroy]

  # GET /manifesto_promises
  # GET /manifesto_promises.json
  def index
    @manifesto_promises = ManifestoPromise.all
  end

  # GET /manifesto_promises/1
  # GET /manifesto_promises/1.json
  def show
  end

  # GET /manifesto_promises/new
  def new
    @manifesto_promise = ManifestoPromise.new
  end

  # GET /manifesto_promises/1/edit
  def edit
  end

  # POST /manifesto_promises
  # POST /manifesto_promises.json
  def create
    @manifesto_promise = ManifestoPromise.new(manifesto_promise_params)

    respond_to do |format|
      if @manifesto_promise.save
        format.html { redirect_to @manifesto_promise, notice: 'Manifesto promise was successfully created.' }
        format.json { render :show, status: :created, location: @manifesto_promise }
      else
        format.html { render :new }
        format.json { render json: @manifesto_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manifesto_promises/1
  # PATCH/PUT /manifesto_promises/1.json
  def update
    respond_to do |format|
      if @manifesto_promise.update(manifesto_promise_params)
        format.html { redirect_to @manifesto_promise, notice: 'Manifesto promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @manifesto_promise }
      else
        format.html { render :edit }
        format.json { render json: @manifesto_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manifesto_promises/1
  # DELETE /manifesto_promises/1.json
  def destroy
    @manifesto_promise.destroy
    respond_to do |format|
      format.html { redirect_to manifesto_promises_url, notice: 'Manifesto promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manifesto_promise
      @manifesto_promise = ManifestoPromise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manifesto_promise_params
      params.require(:manifesto_promise).permit(:title, :description, :progress)
    end
end
