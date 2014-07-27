class WrittenStatementsController < ApplicationController
  before_action :set_written_statement, only: [:show, :edit, :update, :destroy]
  before_action :add_written_statement, only: [:new, :create]

  # GET /written_statements
  def index
    @written_statements = WrittenStatement.all
  end

  # GET /written_statements/1
  def show
    @written_statement = WrittenStatement.find(params[:id], :order => 'DATE(date)')
  end

  # GET /written_statements/new
  def new
    @politician = Politician.find(params[:politician_id])
    @written_statement = @politician.written_statements.new
  end

  def create
    @politician = Politician.find(params[:politician_id])
    @written_statement = @politician.written_statements.new(written_statement_params)
    if @written_statement.save
      redirect_to politician_timeline_path(@politician.id)
    else
      render 'form'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_written_statement
      @written_statement = WrittenStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def written_statement_params
      params.require(:written_statement).permit(:statements, :body, :path, :politician_id, :date)
    end

    def add_written_statement
    @written_statement = WrittenStatement.create
      rescue ActiveRecord::RecordNotFound
    flash[:notice] = "Invalid statement"
    redirect_to new_politician_written_statement_path
  end
end
