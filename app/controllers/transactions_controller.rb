class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all

    @total_income = Transaction.income.sum(:amount)
    @total_expense = Transaction.expense.sum(:amount)
    @balance = Transaction.balance
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      redirect_to transactions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])

    if @transaction.update(transaction_params)
      redirect_to transactions_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    redirect_to transactions_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:description, :amount, :kind, :date, :category_id, :user_id)
  end
end
