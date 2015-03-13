class AsbarabasiController < ApplicationController
  def new
      @asb = AsBarabasi.new
  end

  def create
      @asb = AsBarabasi.new(asb_params)

      if @asb.save
          flash[:notice] = "Submit successful"
          respond_with @asb
      else
          render "new"
      end
  end

  def show
      @asb = AsBarabasi.find(params[:id])
  end

  private

  def asb_params
      params.require(:as_barabasi).permit(:name, :n, :hs, :ls, :nodeplacement, :m,
                                  :bwdist, :bwmin, :bwmax)
  end
end
