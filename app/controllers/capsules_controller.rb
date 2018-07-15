class CapsulesController < InheritedResources::Base

  private

    def capsule_params
      params.require(:capsule).permit(:name, :start_time, :end_time, :remarks)
    end
end

