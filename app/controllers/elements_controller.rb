class ElementsController < InheritedResources::Base

  private

    def element_params
      params.require(:element).permit(:name, :name_kana)
    end
end

