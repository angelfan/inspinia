class AngelPassesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_angel_pass, only: %i[show edit update destroy]

  def index
    @q = AngelPass.ransack(params[:q])
    @angel_passes = @q.result.order(created_at: :desc)
  end

  def show; end

  def new
    @angel_pass = AngelPass.new
  end

  def edit; end

  def create
    @angel_pass = AngelPass.new(angel_pass_params)

    respond_to do |format|
      if @angel_pass.save
        format.html { redirect_to @angel_pass, notice: 'Angel pass was successfully created.' }
        format.js { @result = { status: :ok, msg: 'Angel pass was successfully created.' } }
      else
        format.html { render :new }
        format.js { @result = { status: :error, msg: @angel_pass.errors.full_messages.to_sentence } }
      end
    end
  end

  def update
    respond_to do |format|
      if @angel_pass.update(angel_pass_params)
        format.html { redirect_to @angel_pass, notice: 'Angel pass was successfully updated.' }
        format.json { render :show, status: :ok, location: @angel_pass }
      else
        format.html { render :edit }
        format.json { render json: @angel_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @angel_pass.destroy
    respond_to do |format|
      format.html { redirect_to angel_passes_url, notice: 'Angel pass was successfully destroyed.' }
      format.json { head :no_content }
      format.js { @result = { status: :ok, msg: 'deleted' } }
    end
  end

  private

  def set_angel_pass
    @angel_pass = AngelPass.find(params[:id])
  end

  def angel_pass_params
    params.require(:angel_pass).permit(:title, :site, :account, :password)
  end
end
