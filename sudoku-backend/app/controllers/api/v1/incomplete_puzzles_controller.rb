module Api
  module V1
    class IncompletePuzzlesController < ApplicationController
      # before_action :set_incomplete_puzzle, only: [:show, :edit, :update, :destroy]

      # GET /incomplete_puzzles
      # GET /incomplete_puzzles.json
      def index
        @incomplete_puzzles = IncompletePuzzle.all
      end

      # GET /incomplete_puzzles/1
      # GET /incomplete_puzzles/1.json
      def show
      end

      # GET /incomplete_puzzles/new
      def new
        @incomplete_puzzle = IncompletePuzzle.new
      end

      # GET /incomplete_puzzles/1/edit
      def edit
      end

      # POST /incomplete_puzzles
      # POST /incomplete_puzzles.json
      def create
        @incomplete_puzzle = IncompletePuzzle.new(incomplete_puzzle_params)

        respond_to do |format|
          if @incomplete_puzzle.save
            format.html { redirect_to @incomplete_puzzle, notice: 'Incomplete puzzle was successfully created.' }
            format.json { render :show, status: :created, location: @incomplete_puzzle }
          else
            format.html { render :new }
            format.json { render json: @incomplete_puzzle.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /incomplete_puzzles/1
      # PATCH/PUT /incomplete_puzzles/1.json
      def update
        respond_to do |format|
          if @incomplete_puzzle.update(incomplete_puzzle_params)
            format.html { redirect_to @incomplete_puzzle, notice: 'Incomplete puzzle was successfully updated.' }
            format.json { render :show, status: :ok, location: @incomplete_puzzle }
          else
            format.html { render :edit }
            format.json { render json: @incomplete_puzzle.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /incomplete_puzzles/1
      # DELETE /incomplete_puzzles/1.json
      def destroy
        @incomplete_puzzle.destroy
        respond_to do |format|
          format.html { redirect_to incomplete_puzzles_url, notice: 'Incomplete puzzle was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_incomplete_puzzle
        @incomplete_puzzle = IncompletePuzzle.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def incomplete_puzzle_params
        params.require(:incomplete_puzzle).permit(:user_id, :incompletePuzzle)
      end
    end
  end
end
