class WrittenStatementsController < ApplicationController
  before_action :set_written_statement, only: [:show, :edit, :update, :destroy]
  before_action :add_written_statement, only: [:new, :create]

  def index
    @written_statements = WrittenStatement.all
  end

  def show
    @written_statement = WrittenStatement.find(params[:id], :order => 'DATE(date)')
  end

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
      render 'new'
    end
  end

  private
    def set_written_statement
      @written_statement = WrittenStatement.find(params[:id])
    end

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
