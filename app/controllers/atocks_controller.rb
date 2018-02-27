class AtocksController < ApplicationController

  def search
    if params[:atock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @atock = Atock.new_from_lookup(params[:atock])
      flash.now[:danger] = "You enter an invalid ticker" unless @atock
    end
    respond_to do |format|
      format.js {render partial: 'users/result'}
    end


  end

end
