class TeamsController < ApplicationController
  def index
    @year = params.fetch(:year, 2016).to_i
    @teams = Team.where(year: @year).order(wins: :desc)
  end
end
