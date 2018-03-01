class UserStocksController < ApplicationController

  def create
    stock = Atock.find_by_ticker(params[:stock_ticker])
    if stock.blank?
      stock = Atock.new_from_lookup(params[:stock_ticker])
      stock.save
    end
      @user_stock = UserStock.create(user: current_user, atock: stock)
      flash[:success] = "Stock #{@user_stock.atock.name} was successfully added to portfolio"
      redirect_to my_portfolio_path
  end

  def destroy
    stock = Atock.find(params[:id])
    @user_stock = UserStock.where(user_id: current_user.id, atock_id: stock.id).first
    @user_stock.destroy
    flash[:notice] = "Stock was successfully removed from Portfolio"
    redirect_to my_portfolio_path
  end

end
