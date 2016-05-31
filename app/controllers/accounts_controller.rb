class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def notify
    @account = Account.find(params[:id].to_i)
    @message = Message.where(title: 'hello_balance').first
    AccountMailer.notify(@message, @account).deliver_now
    redirect_to :back
  end
end
