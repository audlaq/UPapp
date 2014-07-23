class WrittenStatementsController < ApplicationController
  before_action :set_written_statement, only: [:show, :edit, :update, :destroy]

  # GET /written_statements
  def index
    @written_statements = WrittenStatement.all
  end

  # GET /written_statements/1
  def show
    @written_statement = WrittenStatement.find(params[:id])
  end

  # GET /written_statements/new
  def new
    @written_statement = WrittenStatement.new
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_written_statement
      @written_statement = WrittenStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def written_statement_params
      params.require(:written_statement).permit(:statements, :body, :path, :references)
    end
end
