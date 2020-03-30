module Api
  module V1
    class CompletePuzzlesController < ApplicationController
      before_action :set_complete_puzzle, only: [:show, :edit, :update, :destroy]

      # GET /complete_puzzles
      # GET /complete_puzzles.json
      def index
        @complete_puzzles = CompletePuzzle.all
      end

      # GET /complete_puzzles/1
      # GET /complete_puzzles/1.json
      def show
      end

      # GET /complete_puzzles/new
      def new
        @complete_puzzle = CompletePuzzle.new
      end

      # GET /complete_puzzles/1/edit
      def edit
      end

      # POST /complete_puzzles
      # POST /complete_puzzles.json
      def create
        @complete_puzzle = CompletePuzzle.new(complete_puzzle_params)

        respond_to do |format|
          if @complete_puzzle.save
            format.html { redirect_to @complete_puzzle, notice: 'Complete puzzle was successfully created.' }
            format.json { render :show, status: :created, location: @complete_puzzle }
          else
            format.html { render :new }
            format.json { render json: @complete_puzzle.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /complete_puzzles/1
      # PATCH/PUT /complete_puzzles/1.json
      def update
        respond_to do |format|
          if @complete_puzzle.update(complete_puzzle_params)
            format.html { redirect_to @complete_puzzle, notice: 'Complete puzzle was successfully updated.' }
            format.json { render :show, status: :ok, location: @complete_puzzle }
          else
            format.html { render :edit }
            format.json { render json: @complete_puzzle.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /complete_puzzles/1
      # DELETE /complete_puzzles/1.json
      def destroy
        @complete_puzzle.destroy
        respond_to do |format|
          format.html { redirect_to complete_puzzles_url, notice: 'Complete puzzle was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_complete_puzzle
        @complete_puzzle = CompletePuzzle.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def complete_puzzle_params
        params.require(:complete_puzzle).permit(:user_id, :completePuzzle)
      end
    end
  end
end
