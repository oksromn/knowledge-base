class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: %i[ show edit update destroy ]

  # GET /notes
  def index
    @notes = current_user.notes

    if params[:tagged].present?
      @notes = @notes.tagged_with(params[:tagged])
    end
  end

  # GET /notes/:id
  def show
  end

  # GET /notes/new
  def new
    @note = current_user.notes.new
  end

  # GET /notes/:id/edit
  def edit
  end

  # POST /notes
  def create
    @note = current_user.notes.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to note_url(@note), notice: "Запись успешно создана" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/:id
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to note_url(@note), notice: "Запись обновлена" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/:id
  def destroy
    @note.destroy

    respond_to do |format|
      format.html { redirect_to notes_url, notice: "Запись была удалена" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = current_user.notes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:title, :content, :tag_list, :folder_id)
    end
end
