class UserGameQuesAndAnsController < ApplicationController
  before_action :set_user_game_ques_and_an, only: [:show, :edit, :update, :destroy]

  # GET /user_game_ques_and_ans
  # GET /user_game_ques_and_ans.json
  def index
    @user_game_ques_and_ans = UserGameQuesAndAn.all
  end

  # GET /user_game_ques_and_ans/1
  # GET /user_game_ques_and_ans/1.json
  def show
  end

  # GET /user_game_ques_and_ans/new
  def new
    @user_game_ques_and_an = UserGameQuesAndAn.new
  end

  # GET /user_game_ques_and_ans/1/edit
  def edit
  end

  # POST /user_game_ques_and_ans
  # POST /user_game_ques_and_ans.json
  def create
    @user_game_ques_and_an = UserGameQuesAndAn.new(user_game_ques_and_an_params)

    respond_to do |format|
      if @user_game_ques_and_an.save
        format.html { redirect_to @user_game_ques_and_an, notice: 'User game ques and an was successfully created.' }
        format.json { render :show, status: :created, location: @user_game_ques_and_an }
      else
        format.html { render :new }
        format.json { render json: @user_game_ques_and_an.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_game_ques_and_ans/1
  # PATCH/PUT /user_game_ques_and_ans/1.json
  def update
    respond_to do |format|
      if @user_game_ques_and_an.update(user_game_ques_and_an_params)
        format.html { redirect_to @user_game_ques_and_an, notice: 'User game ques and an was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_game_ques_and_an }
      else
        format.html { render :edit }
        format.json { render json: @user_game_ques_and_an.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_ques_and_ans/1
  # DELETE /user_game_ques_and_ans/1.json
  def destroy
    @user_game_ques_and_an.destroy
    respond_to do |format|
      format.html { redirect_to user_game_ques_and_ans_url, notice: 'User game ques and an was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_ques_and_an
      @user_game_ques_and_an = UserGameQuesAndAn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_game_ques_and_an_params
      params.require(:user_game_ques_and_an).permit(:user_id, :game_id, :question_id, :answer, :is_correct_ans)
    end
end
