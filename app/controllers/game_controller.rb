class GameController < ApplicationController
  def new; end

  def janken_main; end

  def saisho
    respond_to do |format|
      format.html { render "game/janken/_saisho" }
      format.js
    end
  end

  def guu
    respond_to do |format|
      format.html { render "game/janken/_guu" }
      format.js
    end
  end

  def janken
    @user_choice = params[:choice]

    respond_to do |format|
      format.html { render "game/janken/_janken" }
      format.js
    end
  end

  def pon
    @user_choice = params[:choice]
    @cpu_choice = ["rock", "scissors", "paper"].sample

    @user_icon =
    case @user_choice
    when 'rock'
      "<i class='fas fa-hand-rock'></i>"
    when 'scissors'
      "<i class='fas fa-hand-scissors'></i>"
    when 'paper'
      "<i class='fas fa-hand-paper'></i>"
    end

    @cpu_icon =
    case @cpu_choice
    when 'rock'
      "<i class='fas fa-hand-rock'></i>"
    when 'scissors'
      "<i class='fas fa-hand-scissors'></i>"
    when 'paper'
      "<i class='fas fa-hand-paper'></i>"
    end

    respond_to do |format|
      format.html { render "game/janken/_pon" }
      format.js
    end
  end

  def aiko
    @user_choice = params[:choice]
    respond_to do |format|
      format.html { render "game/janken/_aiko" }
      format.js
    end
  end

  def atti
    @user_choice = params[:choice]

    respond_to do |format|
      format.html { render "game/atti/_atti" }
      format.js
    end
  end

  def hoi
    @user_choice = params[:choice]
    cpu_choices = ['ue', 'sita', 'migi', 'hidari']
    @cpu_choice = cpu_choices.sample

    @cpu_icon =
    case @cpu_choice
    when 'ue'
      "<i class='fas fa-hand-point-up'></i>"
    when 'sita'
      "<i class='fas fa-hand-point-down'></i>"
    when 'migi'
      "<i class='fas fa-hand-point-right'></i>"
    when 'hidari'
      "<i class='fas fa-hand-point-left'></i>"
    end

    @user_icon =
    case @user_choice
    when 'ue'
      "<i class='fas fa-hand-point-up'></i>"
    when 'sita'
      "<i class='fas fa-hand-point-down'></i>"
    when 'migi'
      "<i class='fas fa-hand-point-right'></i>"
    when 'hidari'
      "<i class='fas fa-hand-point-left'></i>"
    end

    respond_to do |format|
      format.html do
        if @user_choice == @cpu_choice
          render 'game/atti/_hoi'
        else
          render 'game/atti/_hoi'
        end
      end
      format.js
    end
  end
end
