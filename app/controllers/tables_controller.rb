class TablesController < ApplicationController
  def index
    tables = Table.all
    render json: TableSerializer.new(tables)
  end

  def show
    table = Table.find(params[:id])
		render json: table
  end
  
end
