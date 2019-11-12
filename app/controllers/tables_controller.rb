class TablesController < ApplicationController
  def index
    tables = Table.all
    render json: tables
  end

  def show
    table = Table.find(params[:id])
		render json: table
  end
  
end
