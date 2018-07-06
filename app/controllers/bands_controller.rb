class BandsController < InheritedResources::Base

  private

    def band_params
      params.require(:band).permit(:name)
    end
end

