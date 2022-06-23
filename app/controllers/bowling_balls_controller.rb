class BowlingBallsController < ApplicationController
  before_action :set_bowling_ball, only: %i[ show edit update destroy ]

  # GET /bowling_balls or /bowling_balls.json
  def index
    @bowling_balls = BowlingBall.all
  end

  # GET /bowling_balls/1 or /bowling_balls/1.json
  def show
  end

  # GET /bowling_balls/new
  def new
    @bowling_ball = BowlingBall.new
  end

  # GET /bowling_balls/1/edit
  def edit
  end

  # POST /bowling_balls or /bowling_balls.json
  def create
    @bowling_ball = BowlingBall.new(bowling_ball_params)

    respond_to do |format|
      if @bowling_ball.save
        format.html { redirect_to bowling_ball_url(@bowling_ball), notice: "Bowling ball was successfully created." }
        format.json { render :show, status: :created, location: @bowling_ball }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bowling_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowling_balls/1 or /bowling_balls/1.json
  def update
    respond_to do |format|
      if @bowling_ball.update(bowling_ball_params)
        format.html { redirect_to bowling_ball_url(@bowling_ball), notice: "Bowling ball was successfully updated." }
        format.json { render :show, status: :ok, location: @bowling_ball }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bowling_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowling_balls/1 or /bowling_balls/1.json
  def destroy
    @bowling_ball.destroy

    respond_to do |format|
      format.html { redirect_to bowling_balls_url, notice: "Bowling ball was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bowling_ball
      @bowling_ball = BowlingBall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bowling_ball_params
      params.require(:bowling_ball).permit(:is_avalable, :size)
    end
end
